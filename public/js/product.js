$(function(){
	if(location.search.indexOf("kwords")!=-1){
	   var kwords=decodeURI(
		  location.search.split("=")[1]   
	   )
	}
	   var divPage=$("div.paging>div")
	   var pno=1;
	   function loadPage(no=1){
	       pno=no
			$.ajax({
				 url:"http://127.0.0.1:3030/product/search",
				 type:"get",
				 dataType:"json",
				 data:{kwords,pno},
				 success:function(laptop){   //后端传来的数据是laptop的对象				
					var {pageCount,products}=laptop
					var html=""   //获取产品详情
					for(var i=0;i<products.length;i++){
					   var {pid,title,subtitle,sm,specs}=products[i]
					  html+=`<ul class="detail_1">
								<li><img src="${sm}"></li>
								<li>
								  <p>
									<a href="#"> ${title}</a>
								  </p>
								  <div class="sub_style">${subtitle}</div>
								</li>
								<li class="price">￥${specs}</li>
								<li>
								  <div class="button">
										   <a href="details.html?pid=${pid}">查看详情</a>
								  </div>
								  <div class="button">
										   <a href="#">加入购物车</a>
								  </div>
								</li>
							  </ul>`
					}
					var divPro=$("div.detail")
						divPro.html(html)

					var html=""  //获取分页信息 
					for(var i=0;i<pageCount;i++){
						html+=`<a href="#" class="${pno==(i+1)?'active':''}">${i+1}</a>`
					}
					divPage.children(":not(:first-child):not(:last-child)").remove()
					divPage.children().first().after(html)
					if(pageCount==1 || pageCount==0){
						 divPage.children().first().addClass("disable")
						 divPage.children().last().addClass("disable")
					}else if(pno==1){
						 divPage.children().first().addClass("disable")
						 .siblings().removeClass("disable")
					}else if(pno==pageCount){
						divPage.children().last().addClass("disable")
							.siblings().removeClass("disable")
					}else{
					   divPage.children().removeClass("disable")
					}
				 }
			})

	}
	loadPage();
			divPage.on("click","a",function(e){
			   e.preventDefault();
			   var $a=$(this)
		       if(!$a.is(".disable,.active")){
				   if($a.is(":first-child")){
				     var no=pno-1
				   }else if($a.is(":last-child")){
				     var no=parseInt(pno)+1
				   }else{
				      var no=$a.html()
				   }
				   loadPage(no)
			  }
			})
})