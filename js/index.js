 $(function(){
	//请求后端轮播图图片
	$.ajax({
	   url:"http://localhost:3030/index/",
	   type:"get",
	   dataType:"json",
	   success:function(res){
		  var html1='';
		  var html2='';
         for(var i=0;i<res.length;i++){
			 var {img}=res[i]
		     html1+=`<img src="${img}">`
		     html2+=`<a href="#"></a>`
		 }	
		 var divCar=$("div.main3>div.lunbo");
			 divCar.html(html1);
             divCar.children().first().addClass("active")
		 var divCir=$("div.main3>div.anniu")
				  divCir.html(html2);
             divCir.children().first().addClass("show")
	   }
	})
	
	$.ajax({
	   url:"http://localhost:3030/index/getPro",
	   type:"get",
	   dataType:"json",
	   success:function(res){
	       var html="";
		   for(var i=0;i<4;i++){
		        var {img,href,title}=res[i];
				html+=`<li class="cake_bg">
		               <a href="${href}"><img src="${img}" alt="">
		                 <div class="shadow"></div>
		                 <div class="draw">
		                 <p class="line p-left"></p>
		                 <p class="line p-top"></p>
		                 <p class="line p-right"></p>
		                 <p class="line p-bottom"></p>
			             <h1>${title}</h1>
		               </div></a>
		               </li>`
		   }
		  var ul=$("div.main4>div:nth-child(2)>ul")
              ul.html(html)

		  var html="";
		  for(var i=4;i<8;i++){
		     var {img,href,title}=res[i];
			 html+=`<li>
		     <div class="shadow1"></div>
			 <a href="${href}">
			 <img src="${img}" class="img_pro">
			 </a>
			 <div class="foot_font">${title}</div>
    	   </li>`
		  }
		 var ul=$("div.main4>div:nth-child(3)>ul")
			 ul.html(html)
	   }
	})
  function task(){
    //获取到有active属性的图片
	var img=$(".active");
	  img.removeClass("active")
	var a=$(".show")
		  a.removeClass("show")
	if(img.next().length==0){
	  var next=img.parent().children("img:first-child")
	  var index=0
	}else{
	  var next=img.next()
	  var index=next.index()
	}
      next.addClass("active")
	  $("div.anniu").children(`:eq(${index})`).addClass("show")
		                                    .siblings().removeClass("show")
  }
	  var timer=setInterval(task,3000)
	/*鼠标移入移出*/
   $("div.main3").mouseover(function(){
      clearInterval(timer)
   })
   $("div.main3").mouseout(function(){
      timer=setInterval(task,3000)
   })
    /*左右箭头*/
	var left=$("div.nav1")
    var right=$("div.nav2")
	right.click(function(e){
		e.preventDefault();
		e.stopPropagation();
	  task()
	})
	left.click(function(e){
		e.preventDefault();
		e.stopPropagation();
		var img=$(".active")
			img.removeClass("active")
	    var a=$(".show")
			a.removeClass("show")
		if(img.prev().length==0){
		  var prev=img.parent().children("img:last-child")
		  var index=img.parent().children().length-1
		}else{
		  var prev=img.prev()  
		  var index=prev.index()
		}
          prev.addClass("active")
		  $("div.anniu").children(`:eq(${index})`).addClass("show")
		                                    .siblings().removeClass("show")
	})
	/*下面四个点*/
	$("div.anniu").on("click","a",function(){
	    var a=$(this).addClass("show")
			a.siblings().removeClass("show")
		var index=a.index();
		   $("div.lunbo").children(`:eq(${index})`).addClass("active").siblings().removeClass("active")
	})

	/*楼层滚动*/
	var $scr=$("div#scroll")
	var $floor=$("div.nav3-1")
		console.log($floor)
		$(window).scroll(function(){
	       var top=$(this).scrollTop()
			   if(top>100){
		           $scr.show();
				   $floor.each(function(i,f){
				      var $f=$(f)
					  var fTop=$f.offset().top
						  if(fTop<=top+innerHeight/2){
						       $scr.children(`.scr:eq(${i})`).addClass("light")
								                             .siblings().removeClass("light")
					      }
				   })
			   }else{
			       $scr.hide();
			   }
		})
	 $scr.on("click",".scr",function(){
	     var i=$(this).index()
		 var Top=$($floor[i]).offset().top-100
			 $("html").stop(true).animate({scrollTop:Top},200)
	})
    
   //广告弹出
   	   var p=$("#str")
       var div=$("div.container")
     setTimeout(function(){
	      div.show()
	   },2000)
	 function rn(min,max){
	   var n=Math.random()*(max-min)+min
	   return Math.floor(n)
	}
	function rc(min,max){
	   var r=rn(min,max)
	   var g=rn(min,max)
	   var b=rn(min,max)
	   return `rgb(${r},${g},${b})`
	}
	setInterval(function(){
	  p.css("color",rc(100,256))
	},1000)
	var span=$("span.close")
	 span.on("click",function(){
			 div.hide()
	  })
 
})