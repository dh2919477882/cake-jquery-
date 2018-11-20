//获取页面上元素的id 
function $(id){
  return document.getElementById(id)
}

function showMsg(){
   $("unameMsg").innerHTML="请输入6位由数字/字母/下划线的组合"
}

function unameBlur(){
   var uname=$("uname").value;
   if(uname==="")
	   $("unameMsg").innerHTML="用户名不能为空";
   else
	   $("unameMsg").innerHTML="通过"

  if($("unameMsg").innerHTML=="通过")$("sign1").innerHTML="";
  }


function getMsg(){
   $("upwdMsg").innerHTML="请输入6-12位密码"
}

function upwdBlur(){
   var upwd=$("upwd").value;
   if(upwd==="")
	   $("upwdMsg").innerHTML="密码不能为空";
   else
	   $("upwdMsg").innerHTML="通过"

if($("upwdMsg").innerHTML=="通过")$("sign2").innerHTML="";}