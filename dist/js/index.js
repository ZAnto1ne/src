document.addEventListener("DOMContentLoaded",function(){jQuery(function(e){a=Cookie.getCookie("uname"),c_start=document.cookie.indexOf("uname="),-1==c_start?(e("#unm").show(),e("#logined").hide(),e("#loginout").hide()):(e("#unm").hide(),e("#loginout").css("display","inline-block"),e("#logined").append(value="欢迎你，"+a),e("#logined").css("display","inline-block"),e("#loginout").on("click",function(){var t=new Date;t.setDate(t.getDate()-1),Cookie.setCookie("uname","",t,"/")})),e("#dd,#dda").on("click",function(){a?window.location.href="html/gwc.html":(alert("请先登录后查看"),window.location.href="html/login.html")});var t=e(".n1"),i=e(".xl");t.on("mouseover",function(){i.css("display","block")}).on("mouseout",function(){i.css("display","none")}),e(".xlg >li").on("mouseover",function(){e(this).children().children(".name").removeClass("hide"),e(this).children().children("img").addClass("hide")}).on("mouseout",function(){e(this).children().children("img").removeClass("hide"),e(this).children().children(".name").addClass("hide")});var n,o=0;function l(){n=setInterval(function(){s(),5==++o&&(o=0)},3e3)}function s(){e(".ig").eq(o).fadeIn(300).siblings(".ig").fadeOut(300),e(".tab").eq(o).addClass("bg").siblings(".tab").removeClass("bg")}function c(t){var i=document.getElementById("xr1"),n=0;i.innerHTML=t.map(function(t){return t.imgurl=t.imgurl.slice(3),n++,'<li class="goods" data-id="'+t.id+'"><img src="images/index1/xlogo'+n+'.png" alt="" /><img src="'+t.imgurl+'" alt="" /><p>'+t.jies+"</p><span>特卖价：</span><span>￥"+t.price+"</span><span>￥"+t.yprice+"</span></li>"}).join(""),$goods=e(".goods"),$goods.on("click",function(){location.href="html/xqy.html?id="+e(this)[0].dataset.id})}function r(t){document.getElementById("xr2").innerHTML=t.map(function(t){return t.imgurl=t.imgurl.slice(3),'<li class="goods" data-id="'+t.id+'"><img src="'+t.imgurl+'" alt="" /><p>'+t.jies+"</p><span>￥"+t.price+"</span><span><i>"+t.rd+"</i>评价</span></li>"}).join(""),$goods=e(".goods"),$goods.on("click",function(){location.href="html/xqy.html?id="+e(this)[0].dataset.id})}e(".ig").eq(0).show().siblings(".ig").hide(),l(),e("#igs").hover(function(){clearInterval(n)},function(){l()}),e(".tab").hover(function(){o=e(this).index(),s(),clearInterval(n)},function(){l()}),e(".btn1").click(function(){clearInterval(n),0==o&&(o=5),o--,s(),l()}),e(".btn2").click(function(){clearInterval(n),4==o&&(o=-1),o++,s(),l()}),e(".ig1").eq(0).show().siblings(".ig1").hide(),e(".tab1").hover(function(){o=e(this).index(),e(".ig1").eq(o).fadeIn(300).siblings(".ig1").fadeOut(300),e(".tab1").eq(o).addClass("bg").siblings(".tab1").removeClass("bg")}),e(".qh li>a").on("click",function(){e(this).addClass("active"),e(this).parent().siblings().children().removeClass("active")}),document.getElementById("text6").onclick=function(){clearInterval(text5.timer),text5.timer=setInterval(function(){window.scrollY<=0&&clearInterval(text5.timer),window.scrollBy(0,-70)},30)},e("#text1").click(function(){return e("html,body").animate({scrollTop:e(e("#text1").attr("href")).offset().top},2e3),!1}),e("#text2").click(function(){return e("html,body").animate({scrollTop:e(e("#text2").attr("href")).offset().top},2e3),!1}),e("#text3").click(function(){return e("html,body").animate({scrollTop:e(e("#text3").attr("href")).offset().top},2e3),!1}),e("#text4").click(function(){return e("html,body").animate({scrollTop:e(e("#text4").attr("href")).offset().top},2e3),!1}),e("#text5").click(function(){return e("html,body").animate({scrollTop:e(e("#text5").attr("href")).offset().top},2e3),!1}),e.ajax({type:"GET",url:"api/xr.php",data:{zt:1,dj:1},success:function(t){c(JSON.parse(t))}}),e("#qh1").on("click","li",function(){var t=e("#qh1 li").index(e(this)[0])+1;e.ajax({type:"GET",url:"api/xr.php",data:{zt:1,dj:t},success:function(t){c(JSON.parse(t))}})}),e.ajax({type:"GET",url:"api/xr.php",data:{zt:2,dj:1},success:function(t){r(JSON.parse(t))}}),e("#qh").on("click","li",function(){var t=e("#qh li").index(e(this)[0])+1;e.ajax({type:"GET",url:"api/xr.php",data:{zt:2,dj:t},success:function(t){r(JSON.parse(t))}})})})});