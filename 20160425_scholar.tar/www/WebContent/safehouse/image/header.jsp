<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> 안전한 家 - 여성을 위한 안전한 집을 찾아드립니다 </title>
<link href="/img/icon_new/favicon.ico" rel="shortcut icon">
<link rel="stylesheet" type="text/css" href="/WebContent/safehouse/css/common.css">
<link rel="stylesheet" type="text/css" href="/WebContent/safehouse/css/ddhouse_mypage.css">
<link rel="stylesheet" type="text/css" href="/WebContent/safehouse/css/ddhouse_se.css">
<link rel="stylesheet" type="text/css" href="/WebContent/safehouse/_master/css/custom-theme/jquery-ui-1.10.2.custom.css">
<script async="" src="//www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="/WebContent/safehouse/_master/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/WebContent/safehouse/_master/js/jquery-ui-1.10.2.custom.min.js"></script>
<script type="text/javascript" src="/WebContent/safehouse/_master/js/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="/WebContent/safehouse/_master/js/json2.js"></script>
<script type="text/javascript" src="/WebContent/safehouse/js/asset_common.js" charset="utf-8"></script>
<script type="text/javascript" src="/WebContent/safehouse/js/upload_common.js" charset="utf-8"></script>
<script type="text/javascript" src="/WebContent/safehouse/js/ddhouse_common.js" charset="utf-8"></script>
<script type="text/javascript" src="/WebContent/safehouse/js/topmenu_border_common.js" charset="utf-8"></script>
<script type="text/javascript">
function goPage(url) {

location.href=url;
}

</script>


<body>


<div style="">
			<div style="float:left"><a href="/"><img src="/WebContent/safehouse/image/logos.png" style="padding:4px"  height = "80"></a></div>
			
			<div style="float:left; text-align:center; margin-left:30px; margin-top:30px; font-size:12px; position:relative; font-family:'굴림',Gulim,'돋움',Dotum,Helvetica,Sans-serif;">
				<div class="round_left" style="border:1px solid #bfbfbf; border-right:0px; width:3px; height:40px; float:left;"></div>
				<div id="topsearch_selgubun" style="padding:0px 3px 0px 3px; float:left; width:110px; height:40px; font-size: 1.13em; border:1px solid #bfbfbf; border-left:0px; border-right:1px dashed #bfbfbf; text-align:center; color:#808080; cursor:pointer">
					<span id="topsearch_selgubun_nm" style="line-height: 3.0em">아파트/분양권</span> <span style="font-size:10px; color:#1e7447">▼</span>
				</div>
				<input type="text" id="topsearch_search" class="stopprop" style="padding-left: 10px; height: 38px; 
	width:275px; 
	padding-left:5px; 
	border:1px solid #bfbfbf;
	border-left:0px; 
	border-right:0px; 
	float:left; 
	font-size:1.13em; 
	line-height: 40px;
	color:gray ;
	 font-family: '굴림',Gulim,'돋움',Dotum,Helvetica,Sans-serif; " value="아파트 이름을 입력하세요">
				<div class="round_right" style="height:40px; width:35px; border:1px solid #bfbfbf; border-left:0px; float:left; cursor:pointer; background-image:url('../../img/btn/magnifier_red.png'); background-position: 50% 50%; background-repeat:no-repeat"></div>
				<br style="clear:both">
				
				<div class="popup" id="top_slayer_location" style="width: 290px; max-height: 250px; display: none;"></div>
				<div id="topsearch_selgubun_option" style="display: none;">
					<ul class="topsearch_optionlist">
						<li onclick="javascript: f_topsearch_change_gubun(this, 'APT')">아파트/분양권</li>
						<li onclick="javascript: f_topsearch_change_gubun(this, 'LAND')">토지</li>
						<li onclick="javascript: f_topsearch_change_gubun(this, 'SHOPRENT')">상가임대</li>
						<li onclick="javascr	ipt: f_topsearch_change_gubun(this, 'SHOPDEAL')">건물매매</li>
						<li onclick="javascript: f_topsearch_change_gubun(this, 'HOUSE')">주택</li>
						<li onclick="javascript: f_topsearch_change_gubun(this, 'FACTORY')">공장·창고</li>
					</ul>
				</div>
			</div>
			
			
			
			<br style="clear:both">
		</div>
		
		
<div id="topmenu" style="height: 40px; z-index: 199; border-radius: 4px 4px 0px 0px; background-color: rgb(32, 130, 79);">
			<div class="topmenues_empty" style=" width:16px; "></div>
			<span class="topmenues" onclick="javascript:goPage('List.jsp')" style=" width:75px; ">실매물</span>
			
			<span class="topmenues "  onclick="javascript:goPage('List.jsp')" style=" width:89px; ">거래의뢰</span>
			
			<span class="topmenues " onclick="javascript:goPage('List.jsp')" style=" width:88px; ">중개업소</span>
			
			<span class="topmenues "  onclick="javascript:goPage('List.jsp')" style=" width:64px; ">뉴스</span>
			
			
			<span class="topmenues "  onclick="javascript:goPage('List.jsp')" style=" width:89px; ">지역정보</span>
		
			<span class="topmenues "  onclick="javascript:goPage('List.jsp')" style=" width:89px; ">커뮤니티</span>
					
			<span class="topmenues "  onclick="javascript:goPage('List.jsp')" style=" width:101px; ">마이페이지</span>
			
			
			<div class="topmenues_empty" style=" width:25px; "></div>
			<br style="clear:both">
		</div>




</body>
</html>