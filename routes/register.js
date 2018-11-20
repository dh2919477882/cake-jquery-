const express=require("express");
const pool=require("../pool");
const router=express.Router();

router.post("/isreg",(req,res)=>{
   var uname=req.body.uname;
   pool.query("select uid from cake_user where uname=?",[uname],(err,result)=>{
       if(err) throw err;
	   if(result.length>0){
	     var obj={code:1,msg:"已存在该用户名"}
	   }else{
	     var obj={code:0,msg:"可以注册"}
	   }
	   res.writeHead(200,{
	     "Content-Type":"application/json;charset=utf-8",
	     "Access-Control-Allow-Origin":"*"
	   });
	   res.write(JSON.stringify(obj));
	   res.end();
   })
})


router.post("/reg",(req,res)=>{
   var uname=req.body.uname;
   var upwd=req.body.upwd;
   var city=req.body.city;
   var sex=req.body.sex;
   var phone=req.body.phone;
   var sql="insert into cake_user values(null,?,?,?,?,?)"
   pool.query(sql,[uname,upwd,city,phone,sex],(err,result)=>{
      if(err) throw err;
	  if(result.affectedRows==1){
	     var obj={code:1,msg:"注册成功"}
	  }else{
	     var obj={code:0,msg:"注册失败"}
	  }
	  res.writeHead(200,{
	     "Content-Type":"application/json;charset=utf-8",
	     "Access-Control-Allow-Origin":"*"	     
	  })
	  res.write(JSON.stringify(obj))
	  res.end();
   })
})

module.exports=router;
