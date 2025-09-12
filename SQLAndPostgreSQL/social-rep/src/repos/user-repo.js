const pool = require('../pool');
const toCamelCase = require('./utils/to-camel-case');

class UserRepo {
    async find(){
        const { rows } = await pool.query('SELECT * FROM users;');

        return toCamelCase(rows);
    }

    async findById(id){
        //WARNING: REALY BIG SECURITY ISSUE
        const { rows } = await pool.query(`
            SELECT * FROM users where id = ${id};
            `);

            return toCamelCase(rows)[0];

    }

    async insert() {

    }
    async update(){

    }
    async delete() {

    }

   async count() {
    const { rows } = await pool.query('SELECT COUNT(*) FROM users;');

    return parseInt(rows[0].count);
   }
}

module.exports = new UserRepo();
