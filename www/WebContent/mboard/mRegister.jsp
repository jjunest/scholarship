<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>장학꿈</title>
<link rel="stylesheet" type="text/css" href="https://www.handong.edu/site/handong/res/css/sub.css" />
<link rel="stylesheet" type="text/css" href="https://www.handong.edu/res/js/fancybox/2.1.5/jquery.fancybox.css" />
<script type="text/javascript" src="https://www.handong.edu/res/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="https://www.handong.edu/res/js/form/3.51.0/form.js"></script>
<script type="text/javascript" src="https://www.handong.edu/res/js/dc/1.0.0/dc_validate.js"></script>
<script type="text/javascript" src="https://www.handong.edu/res/js/fancybox/2.1.5/jquery.fancybox.js"></script>
<script type="text/javascript" src="https://www.handong.edu/res/js/fancybox/2.1.5/helpers/jquery.fancybox-media.js?v=1.0.0"></script>
<script type="text/javascript" src="https://www.handong.edu/res/js/scroll-top/1.0.0/top-button.js"></script>
<script type="text/javascript" src="https://www.handong.edu/res/js/mobile-check/detectmobilebrowser.js"></script>
<script type="text/javascript" src="https://www.handong.edu/res/js/dc/1.0.0/dc.js"></script>	
</head>
	
<body class="os">
	<div>
		<div id="head" class="top-on">
				

<script type="text/javascript">
	$(".log").fancybox({
		width: '840px',
		autoHeight: true,
		openEffect: 'elastic',
		closeEffect: 'elastic'
	});
	
	$(document).bind('scroll', function(event) {
		var scroll = $(window).scrollTop();
		if ("0" == scroll) {
			$("#head").removeClass("top-on");	
			$("#head").addClass("top-off");
		} else {
			$("#head").removeClass("top-off");	
			$("#head").addClass("top-on");
		}
	});
</script>
				<div id="gnb">
					
 




<script type="text/javascript">
	$(".gnb").hover(function() {
	}, function() {
		$(".dep2").removeClass("on");
	});
	
	$(".dep1").click(function () {	
		$(".gnb .tab4").css("display" , "none");
		if ("dep2 on" == $(this).next().attr("class")) {
			$(".dep2").removeClass("on");
		} else {
			$(".gnb div, .gnb ul, .gnb li").removeClass("on");
			$(this).next().addClass("on");
			$(this).next().children().children().eq(0).addClass("on"); 
			$(this).next().children().children().eq(0).children().eq(1).addClass("on"); 
			$(this).next().children().children().eq(0).children().next().children().eq(0).addClass("on"); 
			$(this).next().children().children().eq(0).children().next().children().eq(0).children().eq(1).addClass("on"); 
			$(this).next().children().children().eq(0).children().next().children().eq(0).children().eq(1).children().eq(0).addClass("on"); 
			
			if ("dep2 on" ==  $(".gnb").children().eq(1).attr("class") ) {
				$(".dep2 ul").css("height" , "327px"); 
			} else if ("dep2 on" ==  $(".gnb").children().eq(3).attr("class") )  {
				$(".dep2 ul").css("height" , "405px"); 
			} else if ("dep2 on" ==  $(".gnb").children().eq(5).attr("class") )  {
				$(".dep2 ul").css("height" , "460px"); 
			} else {
				$(".dep2 ul").css("height" , "280px"); 
			}
		}
	});
	
	$(".dep2 a").hover(function() {
		var parent = $(this).parent().parent().attr("class").split(" ");
		$("."+ parent[0] + " li").removeClass("on");
		var calendar = $(this).next().attr("class");
		$("."+ calendar).removeClass("on");
		$(this).parent().addClass("on");
		$(this).next().addClass("on");
	}, function() {
	});
	

</script>

				</div>
			</div>
			
			
			<div id="sub">
				
				
				
				
				
				<div class="sub">
					
					
					
					
					
 




 





<div class="member">
	
	
	
	
	
	
	<div class="t20 mt20">
		회원 가입 신청
	</div>
	
	
	
	<%String dcp_userid="ddd"; %> 
	<form name="signup" method="post" action ="Register_C.jsp">
		<div class="signup">
			<div class="t15">아  &nbsp; &nbsp; &nbsp;&nbsp; 이  &nbsp;&nbsp; &nbsp;  &nbsp;  디</div>
			<div class="oh">
				<input class="fl" type="text" name="dcp_user_id" id = "dcp_user_id_real" title="아이디를입력하세요." >
				<div class="but_c" onclick="javascript:onIdCheck('signup','dcp_user_id_real')">중복확인</div>
				<input type="hidden" name="idcheck" id ="idcheck_real">
			</div>
			
			<div class="t15">이 &nbsp; &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 름</div>
			<input type="text" name="name" title="이름을 입력하세요.">

			<div class="t15">비 &nbsp;&nbsp; 밀 &nbsp; &nbsp; 번 &nbsp;&nbsp; 호</div>
			<input type="password" name="pw" maxlength="20" placeholder ="영문, 숫자, 특수문자를 혼합하세요" title="비밀번호를 입력하세요.">

			<div class="t15" style="letter-spacing:-0.07em;">비&nbsp; 밀&nbsp; 번&nbsp; 호&nbsp; 확&nbsp; 인</div>
			<input type="password" name="pw2" maxlength="20" placeholder ="영문, 숫자, 특수문자를 혼합하세요" title="비밀번호를 입력하세요.">
			
			<div class="t15">이  &nbsp; &nbsp;  &nbsp;&nbsp; 메  &nbsp; &nbsp;  &nbsp;&nbsp; 일</div>
			<input type="text" name="email" title="이메일을 입력하세요.">

			<div class="t15">생 &nbsp;&nbsp; 년 &nbsp; &nbsp; 월 &nbsp;&nbsp; 일</div>
			<div class="oh">
				<select name="birth0">
					
					<option value="1915">1915</option>
					
					<option value="1916">1916</option>
					
					<option value="1917">1917</option>
					
					<option value="1918">1918</option>
					
					<option value="1919">1919</option>
					
					<option value="1920">1920</option>
					
					<option value="1921">1921</option>
					
					<option value="1922">1922</option>
					
					<option value="1923">1923</option>
					
					<option value="1924">1924</option>
					
					<option value="1925">1925</option>
					
					<option value="1926">1926</option>
					
					<option value="1927">1927</option>
					
					<option value="1928">1928</option>
					
					<option value="1929">1929</option>
					
					<option value="1930">1930</option>
					
					<option value="1931">1931</option>
					
					<option value="1932">1932</option>
					
					<option value="1933">1933</option>
					
					<option value="1934">1934</option>
					
					<option value="1935">1935</option>
					
					<option value="1936">1936</option>
					
					<option value="1937">1937</option>
					
					<option value="1938">1938</option>
					
					<option value="1939">1939</option>
					
					<option value="1940">1940</option>
					
					<option value="1941">1941</option>
					
					<option value="1942">1942</option>
					
					<option value="1943">1943</option>
					
					<option value="1944">1944</option>
					
					<option value="1945">1945</option>
					
					<option value="1946">1946</option>
					
					<option value="1947">1947</option>
					
					<option value="1948">1948</option>
					
					<option value="1949">1949</option>
					
					<option value="1950">1950</option>
					
					<option value="1951">1951</option>
					
					<option value="1952">1952</option>
					
					<option value="1953">1953</option>
					
					<option value="1954">1954</option>
					
					<option value="1955">1955</option>
					
					<option value="1956">1956</option>
					
					<option value="1957">1957</option>
					
					<option value="1958">1958</option>
					
					<option value="1959">1959</option>
					
					<option value="1960">1960</option>
					
					<option value="1961">1961</option>
					
					<option value="1962">1962</option>
					
					<option value="1963">1963</option>
					
					<option value="1964">1964</option>
					
					<option value="1965">1965</option>
					
					<option value="1966">1966</option>
					
					<option value="1967">1967</option>
					
					<option value="1968">1968</option>
					
					<option value="1969">1969</option>
					
					<option value="1970">1970</option>
					
					<option value="1971">1971</option>
					
					<option value="1972">1972</option>
					
					<option value="1973">1973</option>
					
					<option value="1974">1974</option>
					
					<option value="1975">1975</option>
					
					<option value="1976">1976</option>
					
					<option value="1977">1977</option>
					
					<option value="1978">1978</option>
					
					<option value="1979">1979</option>
					
					<option value="1980">1980</option>
					
					<option value="1981">1981</option>
					
					<option value="1982">1982</option>
					
					<option value="1983">1983</option>
					
					<option value="1984">1984</option>
					
					<option value="1985">1985</option>
					
					<option value="1986">1986</option>
					
					<option value="1987">1987</option>
					
					<option value="1988">1988</option>
					
					<option value="1989">1989</option>
					
					<option value="1990">1990</option>
					
					<option value="1991">1991</option>
					
					<option value="1992">1992</option>
					
					<option value="1993">1993</option>
					
					<option value="1994">1994</option>
					
					<option value="1995">1995</option>
					
					<option value="1996">1996</option>
					
					<option value="1997">1997</option>
					
					<option value="1998">1998</option>
					
					<option value="1999">1999</option>
					
					<option value="2000">2000</option>
					
					<option value="2001">2001</option>
					
					<option value="2002">2002</option>
					
					<option value="2003">2003</option>
					
					<option value="2004">2004</option>
					
					<option value="2005">2005</option>
					
					<option value="2006">2006</option>
					
					<option value="2007">2007</option>
					
					<option value="2008">2008</option>
					
					<option value="2009">2009</option>
					
					<option value="2010">2010</option>
					
					<option value="2011">2011</option>
					
					<option value="2012">2012</option>
					
					<option value="2013">2013</option>
					
					<option value="2014">2014</option>
					
					<option value="2015">2015</option>
					
				</select> 년
				<select name="birth1">
					
					<option value="1">1</option>
					
					<option value="2">2</option>
					
					<option value="3">3</option>
					
					<option value="4">4</option>
					
					<option value="5">5</option>
					
					<option value="6">6</option>
					
					<option value="7">7</option>
					
					<option value="8">8</option>
					
					<option value="9">9</option>
					
					<option value="10">10</option>
					
					<option value="11">11</option>
					
					<option value="12">12</option>
					
				</select> 월
				<select name="birth2">
					
					<option value="1">1</option>
					
					<option value="2">2</option>
					
					<option value="3">3</option>
					
					<option value="4">4</option>
					
					<option value="5">5</option>
					
					<option value="6">6</option>
					
					<option value="7">7</option>
					
					<option value="8">8</option>
					
					<option value="9">9</option>
					
					<option value="10">10</option>
					
					<option value="11">11</option>
					
					<option value="12">12</option>
					
					<option value="13">13</option>
					
					<option value="14">14</option>
					
					<option value="15">15</option>
					
					<option value="16">16</option>
					
					<option value="17">17</option>
					
					<option value="18">18</option>
					
					<option value="19">19</option>
					
					<option value="20">20</option>
					
					<option value="21">21</option>
					
					<option value="22">22</option>
					
					<option value="23">23</option>
					
					<option value="24">24</option>
					
					<option value="25">25</option>
					
					<option value="26">26</option>
					
					<option value="27">27</option>
					
					<option value="28">28</option>
					
					<option value="29">29</option>
					
					<option value="30">30</option>
					
					<option value="31">31</option>
					
				</select> 일
				<input type="hidden" name="birthday">
			</div>

			<div class="t15">성 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;별</div>
			<div class="oh">
				<select name="gender">
					<option value="M">남성</option>
					<option value="F">여성</option>
				</select>
			</div>
			
			<div class="t15">연  &nbsp; &nbsp;  &nbsp;&nbsp; 락  &nbsp; &nbsp;  &nbsp;&nbsp; 처</div>
			<div class="oh">
				<select name="phon0">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
				</select> -
				<input class="numberOnly" maxlength="4" type="text" name="phon1" style="width:10%;"> -
				<input class="numberOnly" maxlength="4" type="text" name="phon2" style="width:10%;">
				<input type="hidden" name="mobile">
			</div>
			
			<div class="t15">회 &nbsp;&nbsp; 원 &nbsp;&nbsp; 구 &nbsp;&nbsp; 분</div>
			<div class="oh">
				<select style="width:50%;" name="group_name">
					<option value="고등학생">고등학생</option>
					<option value="학부모">학부모</option>
					<option value="일반인">일반인</option>
				</select>
			</div>

			<div class="but mt30">
				<div class="fl but_add" onclick="onSignup()">확인</div>
				<div class="but_back" onclick="onCancel()">취소</div>
			</div>
		</div>
	</form>
		
</div>



<script type="text/javascript">
	function onCancel(){
		alert('취소 눌럿음');
		self.close();
	}
	function onSignup()  //폼을 submit한다. 
	{
		if (chekVal() == true) {
			
			document.signup.submit(); //본문의 signup이름을 가진 form을 submit한다. 
		}
	}	
	
	function onIdCheck(fname, ename)  //id check 눌렀을 시에, 확인 버튼 
	{
		var userid = document.getElementById("dcp_user_id_real").value;	
		var ref = "IdCheck.jsp";
		ref = ref+"?"+ename+"="+userid;

		
		
		var winl = (screen.width-380)/2;

		var wint = (screen.height-200)/2;
		
		winprops = 'height=380, width =200, top='+wint+'left='+winl+',scrollbar=no';
		
		window.open(ref, 'CheckId', winprops);
	}
	

	function chekVal() 
	{
		var pw = $("input[name=pw]").val();
		var email = $("input[name=email]").val().split("@");
		if($("input[name=idcheck]").val() != "y") {
			alert("ID 중복확인 해주세요.");
			$("input[name=id]").focus();
			return false;
		} else if($("input[name=name]").val() == "") {
			alert("이름을 입력해 주세요.");
			$("input[name=name]").focus();
			return false;
		} else if($("input[name=pw]").val() == "") {
			alert("비밀번호를 입력해 주세요.");
			$("input[name=pw]").focus();
			return false;
		} else if($("input[name=pw]").val() != $("input[name=pw2]").val()) {
			alert("비밀번호 가 틀립니다.");
			$("input[name=pw2]").focus();
			return false;
		} else if (validatePw(pw) == false){
			$("input[name=pw]").focus();
			return false;
		} else if($("input[name=email]").val() == "") {
			alert("이메일을 입력해 주세요.");
			$("input[name=email]").focus();
			return false;
		} else if(email.length < 2) {
			alert("올바른 이메일을 입력해주세요");
			$("input[name=email]").focus();
			return false;
		} else if(email[1].split(".").length < 2) {
			alert("올바른 이메일을 입력해주세요");
			$("input[name=email]").focus();
			return false;email[1].split(".").length < 2
		} else if($("input[name=phon1]").val().length < 3) {
			alert("휴대전화번호를 입력해 주세요.");
			$("input[name=phon1]").focus();
			return false;
		} else if($("input[name=phon2]").val().length < 3) {
			alert("휴대전화번호를 입력해 주세요.");
			$("input[name=phon2]").focus();
			return false;
		}  else {
			return true;
		}
	}
</script>

					
					<div class="print" style="display: none;">
						<img alt="print" src="/site/handong/res/img/print.png" onclick="print()" style="cursor:pointer;">
					</div>
				
				</div>
			</div>
		
			<div id="tail">
				
 

<script type="text/javascript">
	$(".qlink .on").click(function () {	
		if ("block" == $(".qlink .top").css("display")) {
			$(".qlink .top").fadeToggle(1);
// 			$("#tail .qlink .socialize .on").css({"transform" : "rotate(0deg)" , "transition" : "transform 0.1s"});
			$("#tail .qlink .socialize .on").css("transform" , "rotate(0deg)");
		} else {
			$(".qlink .top").fadeToggle(1);
// 			$("#tail .qlink .socialize .on").css({"transform" : "rotate(180deg)" , "transition" : "transform 0.5s"});
			$("#tail .qlink .socialize .on").css("transform" , "rotate(180deg)");
		}
	});
</script> 
			</div>

		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				if (jQuery.browser.mobile) {
					$(".print").css("display", "none");
				} else {

				}
			});
		</script>
	
<div id="gotop" class="gotop" style="display: block;"><div></div></div>
<div id="gotop" class="gotop" style="display: none;"><div></div></div></body>
</html>