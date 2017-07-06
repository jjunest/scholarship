<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
div.wrapper {
	border: 10px solid #005DBC;
	width: 90%;
	height: 90%;
	padding: 10px;
	min-height: 100px;
	align: center;
	font-family: Arial, Vendana, sans-serif;
	background-color: #fdf5e6;
	margin: 10px auto 10px auto;
}
</style>
<script language='javascript'>
	function crawlering() {
		var gsWin = window
				.open('about:blank', 'crawlerviewer',
						'scrollbars=yes,toolbar=yes,resizable=yes,width=600,height=1000');
		var frm = document.select_box_form;
		frm.action = 'manager_CrawleringButton_C.jsp';
		frm.target = "crawlerviewer";
		frm.method = "post";
		frm.submit();

	}
</script>



</head>
<body>
	<jsp:include page="manager_Header.jsp"></jsp:include>



	<div class="wrapper">

		<div>이것은 실험 파일 크롤링할 사이트를 선택하시고 확인을 누르세요</div>

		<div class="selector_box">
			<form name="select_box_form" action="manager_CrawleringButton_C.jsp">
				<select id="crawler_select" name="crawler_select">
					<option value="jangHakDoSa">장학도사</option>
					<option value="dreamSpon">드림스폰</option>
					<option value="school_SeoulNational">서울대학교</option>
					<option value="school_YonSei">연세대학교</option>
					<option value="school_Korea">고려대학교</option>
					<option value="school_SoGang">서강대학교</option>
					<option value="school_SungKyunKwan">성균관대학교</option>
					<option value="school_HanYang">한양대학교</option>
					<option value="school_Chung-Ang">중앙대학교(실행불가)</option>
					<option value="school_KyungHee">경희대학교</option>
					<option value="school_Hurfs">한국외국어대학교대학교</option>
					<option value="school_SeoulCity">서울시립대학교</option>
 					<option value="school_KonKuk">건국대학교</option>
					<option value="school_DongGuk">동국대학교</option>
					<option value="school_HongIk">홍익대학교(실행불가)</option>
					<option value="etc">기타</option>
				</select> <input type="button" value="크롤링 시작" onclick="crawlering()">

			</form>
		</div>


	</div>


</body>
</html>