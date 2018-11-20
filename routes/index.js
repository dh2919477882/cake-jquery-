//引入express
const express=require("express");
const pool=require("../pool.js")
//创建路由器
const router=express.Router();

router.get("/",(req,res)=>{
    var sql="SELECT * FROM cake_index_carousel";
	pool.query(sql,[],(err,result)=>{
	  if(err) throw err;
	  res.writeHead(200,{
	     "Content-Type":"application/json;charset=utf-8",
		 "Access-Control-Allow-Origin":"*"
	  });
	  res.write(JSON.stringify(result));
	  res.end()
	})
})

router.get("/getPro",(req,res)=>{
   var sql="SELECT * FROM cake_index_product";
   pool.query(sql,[],(err,result)=>{
      if (err) throw err;
	  res.writeHead(200,{
	    "Content-Type":"application/json;charset=utf-8",
		"Access-Control-Allow-Origin":"*"
	  });
	  res.write(JSON.stringify(result));
      res.end()
   })
})

//导出路由器
module.exports=router;