//引入模块
const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/search",(req,res)=>{
   //模糊查询获取参数
   var kw=req.query.kwords;
   var attr=kw.match(/[\u4e00-\u9fa5A-Za-z\/]{1,}/ig);
   if(attr!=null){
	   for(var i=0;i<attr.length;i++){
	      attr[i]=`title like N'%${attr[i]}%'`
	   }
        var where=" where "+attr.join(" and ");
		var laptop={
		      pageSize:5  //每5个一页
		  }
		  laptop.pno=req.query.pno;
		  var sql="SELECT *,(SELECT sm FROM cake_pic WHERE lid=pid LIMIT 1) AS sm FROM cake_product "
		  pool.query(sql+where,[],(err,result)=>{
		     if(err) throw err;
			 laptop.count=result.length;
			 laptop.pageCount=Math.ceil(laptop.count/laptop.pageSize)
		     laptop.products=result.slice((laptop.pno-1)*5,(laptop.pno-1)*5+5)
        res.writeHead(200,{
		      "Content-Type":"application/json;charset=utf-8",
			  "Access-Control-Allow-Origin":"*"
		  })
		res.write(JSON.stringify(laptop))
        res.end();
		  })
    }
})






//导出模块
module.exports=router;