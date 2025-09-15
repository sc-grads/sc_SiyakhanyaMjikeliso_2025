const pg =require('pg');

const pool = new pg.Pool({
host: 'localhost',
port: 5432,
database: 'SocialNetwork',
user: 'postgres',
password: 'Siya@2002'




});
pool.query(`
    UPDATE post
    set loc = POINT(lng,lat)
    where loc IS NULL;    
    
    
    `).then( () => {
        console.log('Update complete');
        pool.end();



    })
    .catch((err) => console.error(err.message));