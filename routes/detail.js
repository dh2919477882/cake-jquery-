const express=require('express');
const router=express.Router();
const pool=require('../pool');

router.get("/info",(req,res)=>{
   var pid=req.query.pid
   var laptop={
         product:{},
	     pics:[],
		 specs:[]
       }
    var sql1="SELECT * FROM cake_product_spce WHERE pid=? LIMIT 1"//查找产品信息
	var sql2="SELECT * FROM cake_pic WHERE lid=?"  //查找产品图片
	var sql3="SELECT sid,price,spec,size,people_num,tableware,hours FROM cake_product_spce WHERE pid=?"  //查找产品规格
	Promise.all([
		new Promise(function(open){
			pool.query(sql1,[pid],(err,result)=>{
				   if(err) throw err
				   laptop.product=result[0]
					   open();
			})
		}),
		new Promise(function(open){
			pool.query(sql2,[pid],(err,result)=>{
				   if(err) throw err
				   laptop.pics=result
					   open();
			})
		}),
		new Promise(function(open){
			pool.query(sql3,[pid],(err,result)=>{
					if(err) throw err
					laptop.specs=result
					   open();
			})
		})
	]).then(function(){
	    res.writeHead(200,{
		   "Content-Type":"application/json;charset=utf-8",
		   "Access-Control-Allow-Origin":"*"
		});
		res.write(JSON.stringify(laptop))
	    res.end();
	})
})


module.exports=router