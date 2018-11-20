$(function(){
	if(location.search.indexOf("pid")!=-1){
	   var pid=location.href.split("=")[1];
		(async function(){
		 var laptop=await $.ajax({
			   url:"http://127.0.0.1:3030/detail/info",
			   type:"get",
			   data:{pid},
			   dataType:"json"
			})
				console.log(laptop)
			 var {product,pics,specs}=laptop;
			 var {title,hours,people_num,price,size,spec,tableware}=product;
			 var divNav=$("div.details>div.nav")
				 divNav.children(":last-child").after(`${title}`)
			 var html=` <p>${title}</p>
							<h1>价格:￥${price.toFixed(2)}</h1>
							<div class="area_2">
							  <a data-toggle="0" class="active">${specs[0].spec}</a>
							  <a data-toggle="1">${specs[1].spec}</a>
							  <a data-toggle="2">${specs[2].spec}</a>
							</div>
							<table class="area_3">
							   <tr>
								<td>·${size}</td>
								<td>·${tableware}</td>
							   </tr>
							   <tr>
								<td>·${people_num}</td>
								<td>·${hours}</td>
							   </tr>
							</table>`
			 var divAre=$("div.details>div:nth-child(2)>div:nth-child(2)")
								console.log(divAre)
				 divAre.children(":first-child").before(html)
			
             var html=""
			  for(var i=0;i<pics.length;i++){
			    var {sm,lg}=pics[i]
				    html+=`<li>
							<img src="${sm}" data-lg="${lg}">
							</li>`
			  }
			 var divImg=$("div.details>div:nth-child(2)>div:nth-child(1)").children()
			 var $ul=divImg.last()
				 $ul.html(html)
             var Imgmg=divImg.first()  //中图片
				 Imgmg.children().attr("src",pics[0].lg)
                  $ul.prev().css("background-image",`url(${pics[0].lg})`)

             $ul.on("click","li>img",function(){
			      var $img=$(this)
				  var lg=$img.attr("data-lg")
				  Imgmg.children().attr("src",lg)  
				  $ul.prev().css("background-image",`url(${lg})`)
				
			 })



			 var divBig1=$("div.details>div:nth-child(3)>img")
				 divBig1.prop("src",pics[0].lg)
			 var divBig2=$("div.details>div:nth-child(4)>img")
                 divBig2.prop("src",pics[1].lg)


		      divAre.on("click","div.area_2>a",function(e){
                  e.preventDefault();
			      var $a=$(this)
					  $a.addClass("active").siblings().removeClass("active")
				  var i=$a.attr("data-toggle")
					  console.log(i)
				  $a.parent().prev().html(`价格:￥${specs[i].price.toFixed(2)}`)
				  var html=` <tr>
								<td>·${specs[i].size}</td>
								<td>·${specs[i].tableware}</td>
							   </tr>
							   <tr>
								<td>·${specs[i].people_num}</td>
								<td>·${specs[i].hours}</td>
							   </tr>`
					$a.parent().next().html(html)

			  })

			  var divBut=divAre.children(":nth-child(5)")
				  divBut.on("click","a",function(e){
			           e.preventDefault();
					   var $a=$(this)
					   var n=$a.parent().children(":nth-child(2)").html()
						if($a.html()=="-"){
						   n--
						  if(n<0){
						   $a.next().html(0)
						   }else{
					      $a.next().html(n)}
					   }else if($a.html()=="+"){
						   n++
						  $a.prev().html(n)
						}
				 
			 })
			  


			  var Imglg=$ul.prev()  //大图片
			  var mask=Imgmg.next()  //半透明遮罩层
			  var sup=mask.next()   //透明玻璃
			  var msize=200   //mask的大小
			  var max=400-msize   //top和left的最大值
			  sup.hover(function(){
				  mask.toggleClass("d-none")
				  Imglg.toggleClass("d-none")
			  })
			  sup.mousemove(function(e){
				var left=e.offsetX-msize/2;
				var top=e.offsetY-msize/2;
                if(left<0) left=0
			    else if(left>max) left=max
				if(top<0) top=0
			    else if(top>max) top=max
                var left1=left+100
				mask.css("left",left1)
				mask.css({top})
				Imglg.css("background-position",`-${2*left}px -${2*top}px`)
			 })
		})()
   }
})