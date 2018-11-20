 $(function(){
   //动态生成Link标签引入header.css和base.css
   
   $("<link rel='stylesheet' href='css/base.css'>").appendTo("head");
   $("<link rel='stylesheet' href='css/header.css'>").appendTo("head");
	//用ajax请求头部信息
   $.ajax({
      url:"http://127.0.0.1:3030/header.html",
	  type:"get",
	  success:function(res){
		  //在页面上查找id=header的元素将请求来的值替换
	      $("#header").replaceWith(res)
		  //查找触发事件的元素  
		  var $input=$("#search1");
          var $search=$input.next();
		  //绑定事件
		  $search.click(function(){
		      //查找要修改的元素
			  var kw=$input.val().trim();
			  console.log($input.val().trim())
			  //修改元素
			  if(kw!="")
			    location.href=`product.html?kwords=${kw}`
		  })
		  $input.keyup(function(e){
			     if(e.keyCode==13)$search.click()
		  })

		  //模糊查询
		  if(location.search.indexOf("kwords")!=-1){
			  
		     var kwords=decodeURI(location.search.split("kwords=")[1])
				 if(kwords!="/"){
				 $input.val(kwords)}
		  }

         //登录返回页面设置
		 var login=$("div.main1>div:nth-child(3)").children().first().children(":nth-child(3)")
			 login.click(function(){
		       location.href="login.html?back="+location.href;
			  
		    })
	     

	    //判断用户是否已经登录
		$.ajax({
		   url:"http://127.0.0.1:3030/login/islogin",
		   type:"get",
		   dataType:"json",
		   success:function(obj){
			   console.log(obj)
               var divLog=$("#login")
				   console.log(divLog)
		      if(obj.ok==0){
                  divLog.show().siblings().hide();
				 
			  }else{
				  
			      divLog.hide()
					   .siblings().show()
					              .children(":nth-child(1)").html(`欢迎${obj.uname},注销`);
				  
			  }
		   }
		})
		
		$("#out").click(function(e){
		  e.preventDefault();
		    $.ajax({
			   url:"http://127.0.0.1:3030/login/sigout",
			   type:"get",
			   success:function(){ location.reload() }
			})
		})
        
	  }
})
})