$(function(){
	var uname=$("input#uname").val(),
		upwd=$("input#upwd").val(),
		sex,city,phone,
		span1=$("input#uname").next(),
		span2=$("input#upwd").next(),
		span3=$("input#upwd_set").next()
	  $("input#uname").blur(function(){
			reg=/^[0-9A-Za-z]{6}$/
			uname=$(this).val()
		 var p= $(this).parent().next().children()
	      span1=$(this).next()
		 if(uname!="" && reg.test(uname)){
		    $.ajax({
			    url:"http://127.0.0.1:3030/register/isreg",
			    type:"post",
			    data:{uname},
				dataType:"json",
				success:function(obj){
				    if(obj.code==0){
						span1.html("")
						 p.html("通过").css("color","green")
					}else{
					   span1.html("*")
					   p.html("该用户名已存在。请重新输入")
					    .css("color","red")
					}
				}
			})
		 }else{
			   p.html("请输入正确的格式")
				   .css("color","red")
			   span1.html("*")
		 }
	  })

    
	 $("input#upwd").blur(function(){
	      reg=/^[0-9]{6}$/
		  upwd=$(this).val()
		  var p=$(this).parent().next().children()
		  span2=$(this).next()
		  if(reg.test(upwd)){
		     span2.html("")
		     p.html("通过").css("color","green")
		  }else{
             span2.html("*")
			 p.html("请输入正确的格式")
				 .css("color","red")
		  }
	 })

	 $("input#upwd_set").blur(function(){
	      set=$(this).val()
		 var p=$(this).parent().next().children()
			  span3=$(this).next()
		  if(set===upwd){
		     span3.html("")
		     p.html("通过").css("color","green")
		  }else{
             span3.html("*")
		     p.html("密码验证错误，请重新输入")
			  .css("color","red")
		  }
	 })


    $("button").click(function(){
	   sex=$("input[type='radio']:checked").val()
	   city=$("#cy option:selected").val()
	   phone=$("input#phone").val()
			reg=/^1[345678][0-9]{9}$/
       var num=$("input#phone").parent().next().children()
	     if(phone!=""){
		    if(!reg.test(phone)){
			  $("input#phone").parent().next().children().html("请输入正确的手机号码格式")
				  .css("color","red")
			}else{
				 num.html("")
			}
		 }else{
		   phone=undefined
		 }
		 if(city==""){city=undefined}
		 if(uname==""){
			 alert("用户名不能为空")
		 }else if(span1.html()=="*"){
			 alert("请重新输入用户名")
		 }else if(span2.html()=="*"){
		     alert("请重新输入密码")
		 }else if(span3.html()=="*"){
		     alert("密码验证错误，请再次验证")
		 }else if(num.html()!=""){
		     alert("手机格式错误，请重新填写")
		 }else{
		    $.ajax({
			    url:"http://127.0.0.1:3030/register/reg",
				type:"post",
			    data:{uname,upwd,sex,city,phone},
				dataType:"json",
				success:function(obj){
				    if(obj.code==1){
					  alert("注册成功，请登录")
					  location.href="login.html"
					}
				}
			})
		 }
	})
			
})