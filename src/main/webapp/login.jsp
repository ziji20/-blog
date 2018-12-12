<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>博客系统后台登录页面-Powered by ziji20</title>
<script	src="${pageContext.request.contextPath}/static/js/jquery-2.1.1.js"></script>
<%-- <link href="${pageContext.request.contextPath}/static/css/login.css" rel="stylesheet"> --%>
<style type="text/css">
body{
  background:url(${pageContext.request.contextPath}/static/images/bg.png) repeat-x;
  min-height: 600px;
  position: relative;

}

 *{font-family:"微软雅黑"; margin:0; padding:0; border:0; font-size:14px;color:white;}
  html,body{height:100%; width:100%;;}

.kuico{
    background:url(${pageContext.request.contextPath}/static/images/coolyun.png) no-repeat;
    display: inline-block;
    width:26px;
    height:16px;
    margin-right: 5px;
}
.kuintro{
 color:white;
 padding-right: 5px;
 rgba(255, 255, 255, 0.8);
}

.kutrg{
    background:url(${pageContext.request.contextPath}/static/images/triangle.png) no-repeat;
    display: inline-block;
    width:10px;
    height:6px;
   
}
a{
  text-decoration: none;
  color: rgba(255, 255, 255);
  cursor: pointer; 
}

.robot{
    background:url(${pageContext.request.contextPath}/static/images/android.png) no-repeat;
    display: inline-block;
    width:18px;
    height:20px;
    padding-right: 5px;
}

.question{
    background:url(${pageContext.request.contextPath}/static/images/question.png) no-repeat;
    display: inline-block;
    width:20px;
    height:20px;
    padding-right: 5px;
}

.downIntro,.introYun,.account{
float:left;
margin-right: 25px;
}

.name,.pwd{            
  width: 310px;
  height: 44px;
  line-height: 44px;
  padding-left: 15px;
  outline: none;
  border-radius: 20px;
  background-color: #0A3C78;
  border: 1px solid #329BE0;
}
.name:hover,.pwd:hover,.name:focus,.pwd:focus{

	  background-color: #052b64;
}

#login{

  background: #3fb9ff;
  font-size: 18px;
  width: 329px;
  height: 44px;
  outline: none;
  color: white;
  background: -webkit-linear-gradient(#3fb9ff, #099be7, #229de3);
  background: -o-linear-gradient(#3fb9ff, #099be7, #229de3);
  background: -moz-linear-gradient(#3fb9ff, #099be7, #229de3);
  background: linear-gradient(#3fb9ff, #099be7, #229de3);
  border-radius: 20px;
}
#login:hover{
  background: -webkit-linear-gradient(#229de3, #099be7,#3fb9ff);
  background: -o-linear-gradient(#229de3, #099be7,#3fb9ff);
  background: -moz-linear-gradient(#229de3, #099be7,#3fb9ff);
  background: linear-gradient(#229de3, #099be7,#3fb9ff);
}

#hLeft{
  float: left;
  height: 32px;
  vertical-align: middle;
  line-height: 32px;
  width: 172px;
  text-align: center;
  cursor: pointer;
}

#hright{
   float: right;
   margin-right: 10px;

}
#head{
    height: 50px;
	padding-top: 25px;
	margin-left: 14px;
}
#middle{
  margin-top: 100px;
  /* height:600px; */

}
#footer{
  
  text-align: center;
  bottom: 15px;
  position: absolute; 
  width: 100%;
}
#footer a{
	color:black;
}

 #middle li {
 list-style-type:none;
 margin-top: 15px;
 }
 
  #children li {
  list-style-type: none;
  height: 42px;
  line-height: 42px;
  border-bottom: 1px double rgb(5, 33, 113);

 }
 
  #children li a{
   color: rgba(255, 255, 255);
 }
 .register{
   padding-right: 25px;
 }
 
 .downApk{
  background: url(${pageContext.request.contextPath}/static/images/android.png) no-repeat 30px;
  text-indent: 25px;
  display: inline-block;
  height: 32px;
  line-height: 32px;
  width: 232px;
  text-align: center;
 
 }
 
  .downApk:hover{ 
    background-color: #354d8d;
    border-radius: 16px;
  }
 
  .introduce{
  
   background: url(${pageContext.request.contextPath}/static/images/question.png) no-repeat 20px;
  text-indent: 20px;
  display: inline-block;
  height: 32px;
  line-height: 32px;
  width: 140px;
  text-align: center;
 }
 
  .introduce:hover{
    background-color: #354d8d;
    border-radius: 16px;
   }
 .reg{
  height: 32px;
  line-height: 32px;
  width: 129px;
  display: inline-block;
  text-align: center;
   
   }
   
   .reg:hover{
      background-color: #354d8d;
      border-radius: 16px;
    }
    
    .forgetPwd{
    
          height: 32px;
		  line-height: 32px;
		  width: 129px;
		  display: inline-block;
		  text-align: center;
    }
    
     .forgetPwd:hover{
      background-color: #354d8d;
      border-radius: 16px;
     
     }
 #children{
  position: absolute;
  margin-top: 35px;
  left: 14px;
  width: 172px;
  text-align: center;
  background-color: #1f377f;
  display:none;
 }
#hLeft:hover{
  background-color: #1f377f;
  border-radius: 16px;

}

#children li:hover{
  background-color: #354d8d;

}
#cloud{
  background: url(${pageContext.request.contextPath}/static/images/cloud.png) repeat;
  width: 100%;
  height: 356px;
  position: absolute;
  bottom: 0px;
  -webkit-animation: cloud 60s linear infinite alternate;
  -moz-animation: clouds 60s linear infinite alternate;
 
   
  z-index: -10;

}

 @-webkit-keyframes cloud { 
    0%{background-position:top left} 
    100%{background-position:top right} 
 }
 
 @-moz-keyframes clouds { 
    0%{background-position:top left} 
    100%{background-position:top right} 
 }
   
   #err{
     display:none;
     color:red;
   }
   #sky{
  background: url(${pageContext.request.contextPath}/static/images/sky.png) repeat;
  width: 100%;
  heigth: 462px;
  z-index: -20;
  height: 462px;
  position: absolute;
  top: 0px;
   }
   
   #valid {
  height: 44px;
  width: 150px;
  text-indent: 1em;
  vertical-align: middle;
  line-height: 46px;
  outline: none;
  border-radius: 20px;
  background-color: #0A3C78;
  border: 1px solid #329BE0;
}

 #validcode {
  display: inline-block;
  width: 100px;
  height: 30px;
  margin-left: 5px;
  vertical-align: middle;
}

#changeimg {
  margin-left: 15px;
  cursor: pointer;
}
#tlogin:focus{outline:none;}

</style>
<SCRIPT type="text/javascript">
	function checkForm() {
		var userName = $("#userName").val();
		var password = $("#password").val();
		if (userName == null || userName == "") {
			$("#err").html("用户名不能为空！");
			return false;
		}
		if (password == null || password == "") {
			$("#err").html("密码不能为空！");
			return false;
		}
		return true;
	}
</SCRIPT>
</head>
<body>
	<div id="sky"></div>
	<div id="head"></div>
	<div id="middle">
		<form action="${pageContext.request.contextPath}/blogger/login.do"	method="post" onsubmit="return checkForm()">
			<ul style="text-align: center;">
				<li style="font-size: 48px">ZijiBlog</li>
				<li><input class="name" id="userName" name="userName" placeholder="请输入用户名" type="text" value="${blogger.userName }"></li>
				<li><input class="pwd" id="password" name="password" placeholder="请输入密码" type="password"  value="${blogger.password }"></li>
				<li><button id="login">立即登录</button></li>
				<li><span id="err" style="display: inline-block;">${errorInfo }</span></li>
			</ul>
		</form>
	</div>
	<div style="text-align: center; padding-top: 30px" id="footer">Copyright ©
		2018 紫极20 版权所有</div>
	<div id="cloud"></div>
</body>
</html>