<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>장학꿈</title>

<link rel="stylesheet" type="text/css" href="https://www.handong.edu/site/handong/res/css/sub.css" />
<script type="text/javascript" src="https://www.handong.edu/res/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	document.onkeydown = function() { 
		if (event.keyCode == 13) {
			onLogin();
		}
	};
		
			function onLogin()  //login시에 발생하는 이벤트 Post로 "id_real" "pw_real"를 Login_C.jsp로 넘긴다 
			{
				document.frmLogin.submit();
			}
			
			function chkKey(that, divID)
			{
				if(that.value.length < 1) {
					$("#"+divID+" img").attr("src","/WebContent/images/x.png");
				} else {
					$("#"+divID+" img").attr("src","/WebContent/images/v.png");
				}
			}
		</script>
		
		<style type="text/css">
			input[type=text], input[type=password] {position:absolute; top:0; left:0; width:80%; height:44px; padding:0 5% 0 15%; font-size:13px; background:none; border:none; line-height:44px;}
			#id-container {position:relative; background:#fff; width:100%; height:42px; border:1px solid #e8e8e9; overflow:hidden;} 
			#pw-container {position:relative; background:#fff; width:100%; height: 42px; border:1px solid #e8e8e9; margin-top:20px; overflow:hidden;}
			#icon_id, #icon_pw {position:absolute; top:12px; right:20px;}
			
			.w_login {width:100%; max-width:840px; }
			.login {position:relative; width:80%; padding:50px 5% 25px 15%;}
			.login .t12 {margin:10px 5px 30px 0; font-size:12px; font-weight:bold; color:#313131; text-align:right; }
			.login .t12 a {color:#313131; margin-left:20px;}
			.login .login_but {display:block; line-height:64px; color:#fff; font-size:17px; font-weight:bold; text-align:center; background-color:#005DBC; repeat-x 0 0; border-radius:3px;}
			
			@media only screen and (max-width:800px) {
				.login {width:90%; padding:50px 5% 25px 5%;}
				input[type=text], input[type=password] {width:75%; padding:0 5% 0 20%;}
			}
		</style>
</head>
<body>
	<div class="w_login">
		<div class="login">
			<form class="form" method = "POST" name="frmLogin" action = "Login_C.jsp"> 
				<div id="id-container">
				<img src="/WebContent/images/id.png" alt="chk" />
				<input type="text" name="id" id ="id_real" style="" value="" title="아이디 입력" placeholder="아이디를 입력하세요" maxlength="50" onkeyup="chkKey(this, 'icon_id')" />
				<div id="icon_id"><img src="/WebContent/images/x.png" alt="chk" /></div>
				</div>
				
				<div id="pw-container">
				<img src="/WebContent/images/password.png" alt="chk" />
				<input type="password" name="pw" id = "pw_real" value="" title="비밀번호 입력" placeholder="비밀번호를 입력하세요" autocomplete="off" onkeyup="chkKey(this, 'icon_pw')" maxlength="50" />
				<div id="icon_pw"><img src="/WebContent/images/x.png" alt="chk" /></div>
				</div>
				
				<div class="t12">
				<a href="">아이디/비밀번호찾기</a>
				<a href="" target="_blank">회원가입</a>
				</div>
				
				<a class="login_but" href="javascript:onLogin();">Login</a>
			</form>
		</div>
	</div>
</body>
</html>