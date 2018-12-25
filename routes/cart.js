 const express=require('express');
const router=express.Router();
const pool=require('../pool')

router.post("/add",(req,res)=>{
   var uid=req.body.uid
   var count=req.body.count
   var pid=req.body.pid
   var spec=req.body.spec
   pool.query("select * from cake_shoppingcart where uid=? and product_id=? and spec=?",[uid,pid,spec],(err,result)=>{
      if(result.length==0){
	    var sql="insert into cake_shoppingcart values(null,?,?,?,?)"
		   pool.query(sql,[uid,pid,count,spec],(err,result)=>{
			   if(err) throw err;
			   if(result.affectedRows>0){
			      var obj={code:200,msg:'添加成功'}
				  res.writeHead(200,{
				     "Content-Type":"application/json;charset=utf-8",
					 "Access-Control-Allow-Origin":"*"
				  })
				  res.write(JSON.stringify(obj))
				  res.end()
			   }
		   })
	  }else{
	    var sql="update cake_shoppingcart set count=count+? where uid=? and product_id=? and spec=?"
		pool.query(sql,[count,uid,pid,spec],(err,result)=>{
		    if(err) throw err;
			if(result.affectedRows>0){
			   var obj={code:202,msg:'增加成功'}
                res.writeHead(200,{
				     "Content-Type":"application/json;charset=utf-8",
					 "Access-Control-Allow-Origin":"*"
				  })
				  res.write(JSON.stringify(obj))
				  res.end()
			}
		})
	  
	  }
   })
   
})

router.get("/info",(req,res)=>{
    var uid=req.query.uid
	var laptop={info:[],detInfo:[],img:[]}
	    Promise.all([
        new Promise(function(open){
            var sql="select cid,count,spec,product_id from cake_shoppingcart where uid=?"
            pool.query(sql,[uid],(err,result)=>{
                if(err) throw err;
                 laptop.info=result;
                open();
            })
       }),
       new Promise(function(open){
		   var sql=" SELECT pid,price,spec,title FROM cake_product_spce WHERE cake_product_spce.pid=any( SELECT cake_shoppingcart.product_id FROM cake_shoppingcart WHERE uid=? ) AND cake_product_spce.spec=any( SELECT cake_shoppingcart.spec FROM cake_shoppingcart WHERE uid=? ) "
           pool.query(sql,[uid,uid],(err,result)=>{
               if(err) throw err;
                laptop.detInfo=result
                
                open()
           }) 
       }),
       new Promise(function(open){
			var sql="select lid,sm from cake_pic where lid=any(SELECT cake_shoppingcart.product_id FROM cake_shoppingcart WHERE uid=?) GROUP BY lid"
            pool.query(sql,[uid],(err,result)=>{
                if(err) throw err;
                laptop.img=result
                open()
            })
       })
    ]).then(function(){
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8",
			"Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(laptop))
        res.end()
    })
})

router.get("/update",(req,res)=>{
   var count=req.query.count
   var cid=req.query.cid
    var sql="update  cake_shoppingcart set count=? where cid=?"
   pool.query(sql,[count,cid],(err,result)=>{
        if(err) throw err;
	    if(result.affectedRows>0){
		  var obj={code:200,msg:"修改成功"}
		  res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8",
			"Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(obj))
        res.end()
		}
   })
})

router.get("/del",(req,res)=>{
    var cid=req.query.cid
	var sql="delete from cake_shoppingcart where cid=?"
	pool.query(sql,[cid],(err,result)=>{
	     if(err) throw err;
		 if(result.affectedRows>0){
		  var obj={code:200,msg:"删除成功"}
		  res.writeHead(200,{
            "Content-Type":"application/json;charset=utf8",
			"Access-Control-Allow-Origin":"*"
			})
			res.write(JSON.stringify(obj))
			res.end()
		 }
	})
})

module.exports=router