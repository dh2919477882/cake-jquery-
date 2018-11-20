//引入mysql模块
const mysql=require('mysql');
var pool=mysql.createPool({
     host:'127.0.0.1',
     user:'root',
     password:'',
     database:'cake',
	 connectionLimit:10
   })

//导出模块
module.exports=pool