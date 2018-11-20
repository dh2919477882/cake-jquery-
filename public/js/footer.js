$(function(){
  $("<link rel='stylesheet' href='css/footer.css'>").appendTo("head")
  $("<link rel='stylesheet' href='css/base.css'>").appendTo("head")
	  $.ajax({
         url:"http://127.0.0.1:3030/footer.html",
		 type:"get",
		 success:function(res){
		    $("#footer").replaceWith(res)
		 }
     })
})