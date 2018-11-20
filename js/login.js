$(function(){
	  $("#uname").click(function(){
	    $("#unameMsg").html("请输入6位字母或数字")
	  })
	 $("#uname").blur(function(){
	     if($(this).val()==""){
		   $("#unameMsg").html("用户名不能为空")
			    $(this).next().html("格式错误")
				   .css("fontSize","14px")
				   .css("color","red")
		 }else{
		   reg=/^[0-9A-Za-z]{6}$/;
		   var str=$(this).val();
		   if(reg.test(str)){
               $("#unameMsg").html("")
		      $(this).next().html("格式正确")
				  .css("color","green")
				  .css("fontSize","14px")
		   }else{
		       $("#unameMsg").html("请重新输入")
			   $(this).next().html("格式错误")
				   .css("fontSize","14px")
				   .css("color","red")
		   }
		 }
	 })

	 $("#upwd").click(function(){
	    $("#upwdMsg").html("请输入6位数字")
	 })
	 $("#upwd").blur(function(){
	     if($(this).val()==""){
		   $("#upwdMsg").html("密码不能为空")
			$(this).next().html("格式错误")
				   .css("fontSize","14px")
				   .css("color","red")
		 }else{
		   reg=/^[0-9]{6}$/;
		   var str=$(this).val()
		   if(reg.test(str)){
		      $("#upwdMsg").html("")
              $(this).next().html("格式正确")
				  .css("color","green")
				  .css("fontSize","14px")
		   }else{
			  $("#upwdMsg").html("请重新输入")
              $(this).next().html("格式错误")
				   .css("fontSize","14px")
				   .css("color","red")
		   }
		 }
     })
		
	//实现记住密码自动登录
	$(document).ready(function(){
	  if($.cookie("user")=="true"){
	    $("input#pwd").attr("checked",true);
		$("#uname").val($.cookie("username"))
		$("#upwd").val($.cookie("password"))
	  }
	})

     var btn=$("div.push>form").children().last();
	   btn.click(function(e){
	      e.preventDefault();

		  var uname=$("input#uname").val();
		  console.log($("input#uname"))
		  var upwd=$("input#upwd").val();
		  $.ajax({
		      url:"http://127.0.0.1:3030/login/signin",
			  type:"post",
			  data:{uname,upwd},
			  dataType:"json",
			  success:function(obj){
			     if(obj.code==1){
                     alert("登录成功，即将返回页面")
					if(location.href.indexOf("?back=")!=-1){
						var url=location.href.split("?back=")[1]
							if(url=="http://127.0.0.1:3030/register.html"){
						      url="index.html"
						  }else{
						     url=url
						  }
						
					}else{
					   var url="index.html"
					}
					location.href=url
				 }else{
				   alert("用户名或密码错误")
				 }
			  }
		  })
		  console.log($("#pwd").attr("checked"))
		  if($("#pwd").attr("checked")){
		     $.cookie("user","true",{expires:7});
			 $.cookie("username",uname,{expires:7});
			 $.cookie("password",upwd,{expires:7});
		  }else{
		    $.cookie("user", "false", { expire: -1 });
			  $.cookie("username", "", { expires: -1 });
			  $.cookie("password", "", { expires: -1 });
		  }
	  })




})