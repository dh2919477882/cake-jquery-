const express=require('express');
const router=express.Router();
const pool=require("../pool.js")

router.post("/signin",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  pool.query("select uid from cake_user where uname=? and upwd=?",[uname,upwd],(err,result)=>{
     if(err) throw err;
	 if(result.length>0){
		 req.session.uid=result[0].uid
         var obj={code:1,msg:"登录成功"}
	 }else{
	    var obj={code:-1,msg:"用户名或密码错误"}
	 }
	 res.writeHead(200,{
	    "Content-Type":"application/json;charset=utf-8",
	    "Access-Control-Allow-Origin":"*"
	 })
	 res.write(JSON.stringify(obj));
	 res.end();
  })
})


router.get("/islogin",(req,res)=>{
		if(req.session.uid===undefined){  //如果没有登录，session.uid为undefined
			obj={ok:0}
				res.writeHead(200,{
				   "Content-Type":"application/json;charset=utf-8",
				   "Access-Control-Allow-Origin":"*"
				});
				res.write(JSON.stringify(obj))
				res.end()
		}else{            //如果登录了，则返回用户姓名
		   var uid=req.session.uid; 
		   pool.query("select uname from cake_user where uid=?",[uid],(err,result)=>{
			   if(err) throw err;
				var uname=result[0].uname;
				 obj={ok:1,uname}
				res.writeHead(200,{
				   "Content-Type":"application/json;charset=utf-8",
				   "Access-Control-Allow-Origin":"*"
				});
				res.write(JSON.stringify(obj))
				res.end()
		   })
		}  //因为pool请求是异步的，要等数据加载完才发送所以用promise

})


router.get("/sigout",(req,res)=>{
    req.session.uid=undefined;
	res.send();
})

module.exports=router;