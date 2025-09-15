const express = require('express');
const pg =require('pg');

const pool = new pg.Pool({
host: 'localhost',
port: 5432,
database: 'SocialNetwork',
user: 'postgres',
password: 'Siya@2002'




});

pool.query('SELECT 1+1;').then((res) => console.log(res));

const app = express();
app.use(express.urlencoded({extended: true}));

app.get('/posts',async(req,res)=>{
    const {rows} = await pool.query(`
      SELECT * FROM posts;  
        `);
    res.send(`
      <table>
        <thead>
            <tr>
                <th>id</th>
                <th>lng</th>
                <th>lat</th>
            </tr>
        </thead>
        <tbody>
            ${rows.map(row => {
                return `
                    <tr>
                        <td>${row.id}</td>
                        <td>${row.lng}</td>
                        <td>${row.lat}</td>
                    </tr>
                    `;
            }).join('')}
        </tbody>
      </table>
      <form method="POST">
        <h3> Create Post</h3>
        <div>
            <label>Lng</label>
            <input name="lng" />
        </div>
        <div>
            <label>Lat</label>
            <input name"lat" />
        </div>
        <button type="submit">Create</button>
      
      </form>
        
        
        `);

});
app.listen(3005, ()=> {
    console.log('Listening on port 3005');
});