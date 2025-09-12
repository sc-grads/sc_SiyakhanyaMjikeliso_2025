const request = require('express');

const buildapp = require('../../app');
const UserRepo = require('../../repos/user-repo');
const pool = require('../../pool');

const { randomBytes} = require('crypto');
const {default: migrate} = require('node-pg-migrate');
const format = require('pg-format');
const { password } = require('pg/lib/defaults');


beforeAll(async() =>{
    // Randomly generating a role name to connect to PG as
    const roleName = 'a' + randomBytes(4).toString('hex');

    //Connect to PG as usual
    await pool.connect({
         host: 'localhost',
         port: 5432,
         database: 'socialnetworking-test',
         user: 'postgres',
         password: 'Siya@2002',
    });

    //Create a new role
    await pool.query(`
        CREATE ROLE ${roleName} WITH LOGIN PASSWORD '${roleName}';   
        `);

    // Create a schema with the same name
    await pool.query(`
        CREATE SCHEMA ${roleName} AUTHORIZATION ${roleName};
        
        
        `);

    //Disconnect entirely from PG
    await pool.close();

    // Run our migration in the new schema
    await migrate({
        schema: roleName,
        direction: 'up',
        log: () => {},
        nolock: true,
        dir: 'migrations',
        databaseUrl: {
         host: 'localhost',
         port: 5432,
         database: 'socialnetworking-test',
         user: roleName,
         password: roleName,

        },

    });

    // Connect to PG as the newly created role
    await pool.connect({
         host: 'localhost',
         port: 5432,
         database: 'socialnetworking-test',
         user: roleName,
         password: roleName,
 });


   


  

});
    afterAll(() =>{
        return pool.close();
    });

it('create a user', async () => {
    const startingCount = await UserRepo.count();
    expect(startingCount).toEqual(0);

    await request(buildapp())
    .post('/users')
    .send({username: 'testuser',bio: 'testbio'})
    .expect(200);

    const finishCount = await UserRepo.count();
    expect(finishCount - startingCount).toEqual(1);
});