const mysql=require("mysql");
const con=mysql.createConnection({
    user:"root",
    password:"",
    host:"localhost",
    database:"ele"
});
con.connect();
module.exports=con;