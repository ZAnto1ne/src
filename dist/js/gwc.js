document.addEventListener("DOMContentLoaded",function(){jQuery(function(c){c("#tz").click(function(){window.location.href="../index.html"}),a=Cookie.getCookie("uname");a;function n(t){for(var i=0,n=0,e=0;e<t.length;e++)n+=t[e].price*t[e].qty;var o=t.map(function(t,n){return i=t.price*t.qty,'<li data-id="'+t.id+'" class="clearfix"><img src="'+t.imgurl+'" height="118" width="88" alt="" /><div class="wz"><span>商品名称：'+t.uname+"</span><br /><span>价格：<i>"+t.price+'</i>元</span><span class="wbk">数量：</span><button class="jian">-</button><input id="txt" type="text" value="'+t.qty+'"/><button class="jia">+</button><span class="jg">总价：<i>'+i+'</i>元</span><button class="delBtn" id="del">X</button></div></li>'}).join("");o=o+'<p>共：<i id="sum">'+n+'</i>元</p><button id="submit1">支付</button>',xr.innerHTML=o,console.log(),c("#submit1").on("click",function(){t.map(function(t){c.ajax({type:"GET",url:"../api/jsy.php",data:{idx:t.idx},success:function(t){alert("支付成功"),window.location.href="../index.html"}})})}),c(".jia").on("click",function(){var t=c(this).parent().parent().attr("data-id"),n=c(this).prev("input").val(),i=c(this).parent().children(".jg").children("i").text(),e=i/n;i=++n*e,c(this).prev("input").val(n),c(this).parent().children(".jg").children("i").text(i),c.ajax({type:"post",url:"../api/xqycar1.php",data:{xg:1,name:a,id:t,allqty:n},success:function(t){for(var n=JSON.parse(t),i=0,a=0;a<n.length;a++)i+=n[a].price*n[a].qty;c("#sum").text(i)}})}),c(".jian").on("click",function(){var t=c(this).parent().parent().attr("data-id"),n=c(this).parent().children("input").val(),i=c(this).parent().children(".jg").children("i").text(),e=i/n;i=--n*e,c(this).parent().children("input").val(n),c(this).parent().children(".jg").children("i").text(i),c.ajax({type:"post",url:"../api/xqycar1.php",data:{xg:1,name:a,id:t,allqty:n},success:function(t){for(var n=JSON.parse(t),i=0,a=0;a<n.length;a++)i+=n[a].price*n[a].qty;c("#sum").text(i)}})})}c_start=document.cookie.indexOf("uname="),-1==c_start?(c("#unm").show(),c("#logined").hide(),c("#loginout").hide()):(c("#unm").hide(),c("#loginout").css("display","inline-block"),c("#logined").append(value="欢迎你，"+a),c("#logined").css("display","inline-block"),c("#loginout").on("click",function(){var t=new Date;t.setDate(t.getDate()-1),Cookie.setCookie("uname","",t,"/"),window.location.href="../index.html"})),c.ajax({type:"GET",url:"../api/xqycar.php",data:{name:a},success:function(t){n(JSON.parse(t))}}),c("div").on("mousedown","button",function(){c(this).css("opacity","0.8")}),c("div").on("mouseup","button",function(){c(this).css("opacity","1")}),c(".wz").on("click","button",function(){c(this).parent().remove()}),c("div").on("click","#del",function(){var t=c(this).parent().parent().remove().attr("data-id");console.log(t),c.ajax({type:"GET",url:"../api/xqycar.php",data:{name:a,sc:t},success:function(t){n(JSON.parse(t))}})})})});