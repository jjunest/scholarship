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
</head>
<body>

<%@ include file="header.jsp" %>

<div class="content_sub_left">

	
	
			<p style="margin-top:20px; font-size:12px; font-weight:bold">
			포항시 전체
			</p>
			
			
		<div class="assetlist_wrap no_border_top">
				<div class="bold_letter" style="float:left; padding-left:15px; padding-top:5px; font-size:15px; margin-bottom:18px;">
					<img src="/WebContent/safehouse/image/house1.PNG" width = "50" height = "50"> 포항시 아파트 매물
				</div> 
				<div style="float:right; margin-right:5px; margin-top:10px;">

					
					<div style="font-size:13px; margin-left:15px; line-height:27px">
						<span onclick="f_search('set', 'selAssetKindFlag', '')" style="cursor:pointer; padding-right:6px; color:blue"><input type="radio" checked="">전체<span style="font-size:11px;">(10968)</span></span>
						<span onclick="f_search('set', 'selAssetKindFlag', 'MB')" style="cursor:pointer; padding-right:6px; "><input type="radio">분양권<span style="font-size:11px;">(1618)</span></span>
						<span onclick="f_search('set', 'selAssetKindFlag', 'M')" style="cursor:pointer; padding-right:6px; "><input type="radio">매매<span style="font-size:11px;">(8750)</span></span>
						<span onclick="f_search('set', 'selAssetKindFlag', 'J')" style="cursor:pointer; padding-right:6px; "><input type="radio">전세<span style="font-size:11px;">(1010)</span></span>
						<span onclick="f_search('set', 'selAssetKindFlag', 'W')" style="cursor:pointer; padding-right:6px; "><input type="radio">월세<span style="font-size:11px;">(1684)</span></span>
					</div>	
				</div>
				
				<table class="assetlist2" id="asset_list_tbl">
					<tbody><tr style="background-color: white;" class="even">
						<th style="width:90px">실매물확인</th>
						<th style="width:60px">매/임</th>
						<th style="width:70px">읍면동</th>
						<th style="width:113px">아파트명<span class="sort ord_apt" onclick="f_searchOrd(this, 'ord_apt')">▼</span></th>
						<th style="width:90px">
							<div class="search_round condition_item showpopup slayer_pyung">면적</div>
							<span class="sort ord_pyung" onclick="f_searchOrd(this, 'ord_pyung')">▼</span>
						</th>
						<th style="width:90px">동/층</th>
						<th style="width:80px">
							<div class="search_round condition_item showpopup2 slayer_price">금액</div>
							<span class="sort ord_price" onclick="f_searchOrd(this, 'ord_price')">▼</span>
						</th>
						<th style="width:110px">전화번호</th>
					</tr>
					
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '239818')" class="firstrow asset_main 239818  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">대도동</td>
						<td>
							<span class="no_strike">경인일호아파트</span>
							<span id="comment_mark_239818"></span>
							<span id="favorite_mark_239818"></span>							
						</td>
						<td class="ta_center no_strike">69㎡ <span style="color:rgb(205,101,0)">[21]</span></td>
						<td class="ta_left no_strike">
							
							1개동 4층
							
						</td>
						<td class="ta_right no_strike">
							6,000							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-241-4985
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_239818" class="asset_sub 239818  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 문화예술회관 건너편..샷시 .바닥공사.씽크대.신발장.욕실.2년전 올수리했어요..
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail_Test.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '234723')" class="firstrow asset_main 234723  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center"><span style="color:blue">매/월</span></td>
						<td class="ta_center no_strike">대잠동</td>
						<td>
							<span class="no_strike">대잠아델리아</span>
							<span id="comment_mark_234723"></span>
							<span id="favorite_mark_234723"></span>							
						</td>
						<td class="ta_center no_strike">82㎡ <span style="color:rgb(205,101,0)">[25]</span></td>
						<td class="ta_left no_strike">
							
							102동 로얄층
							
						</td>
						<td class="ta_right no_strike">
							26500						
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-3854-4675
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_234723" class="asset_sub 234723  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											올확장 수리된 로얄층입니다. 이사협의가능, 융자 없음  

 
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail_Test2.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '238851')" class="firstrow asset_main 238851  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">대도동</td>
						<td>
							<span class="no_strike">신흥올림푸스</span>
							<span id="comment_mark_238851"></span>
							<span id="favorite_mark_238851"></span>							
						</td>
						<td class="ta_center no_strike">109㎡ <span style="color:rgb(205,101,0)">[33]</span></td>
						<td class="ta_left no_strike">
							
							1개동 로얄층
							
						</td>
						<td class="ta_right no_strike">
							8,600							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-277-5757
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_238851" class="asset_sub 238851  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											입주협의, 방3,거실,주방,욕실,
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '243101')" class="firstrow asset_main 243101  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">대도동</td>
						<td>
							<span class="no_strike">일성빌라</span>
							<span id="comment_mark_243101"></span>
							<span id="favorite_mark_243101"></span>							
						</td>
						<td class="ta_center no_strike">79㎡ <span style="color:rgb(205,101,0)">[24]</span></td>
						<td class="ta_left no_strike">
							
							1동 로얄층
							
						</td>
						<td class="ta_right no_strike">
							6,000							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-2512-4661
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_243101" class="asset_sub 243101  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											입주협의, 실내깨끗 방3개 기독병원 인근 1층도 있어요  확장 수리 깨끗합니다, 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '235475')" class="firstrow asset_main 235475  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">대도동</td>
						<td>
							<span class="no_strike">태백장미맨션</span>
							<span id="comment_mark_235475"></span>
							<span id="favorite_mark_235475"></span>							
						</td>
						<td class="ta_center no_strike">99㎡ <span style="color:rgb(205,101,0)">[30]</span></td>
						<td class="ta_left no_strike">
							
							가동 로얄층
							
						</td>
						<td class="ta_right no_strike">
							9,500							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-241-4985
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_235475" class="asset_sub 235475  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 운동장 건너편 .남향.방3.깨끗함
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '222318')" class="firstrow asset_main 222318  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center"><span style="color:blue">월세</span></td>
						<td class="ta_center no_strike">대잠동</td>
						<td>
							<span class="no_strike">그린파크명품</span>
							<span id="comment_mark_222318"></span>
							<span id="favorite_mark_222318"></span>							
						</td>
						<td class="ta_center no_strike">109㎡ <span style="color:rgb(205,101,0)">[33]</span></td>
						<td class="ta_left no_strike">
							
							103동 고층
							
						</td>
						<td class="ta_right no_strike">
							2,000/70							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-6533-8362
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_222318" class="asset_sub 222318  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 2000/80도 가능.도배,도색완료.로얄층~~.즉시입주가능., 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
							<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '243806')" class="firstrow asset_main 243806  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">대잠동</td>
						<td>
							<span class="no_strike">그린파크명품</span>
							<span id="comment_mark_243806"></span>
							<span id="favorite_mark_243806"></span>							
						</td>
						<td class="ta_center no_strike">155㎡ <span style="color:rgb(205,101,0)">[47]</span></td>
						<td class="ta_left no_strike">
							
							106동 로얄층
							
						</td>
						<td class="ta_right no_strike">
							37,000							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-4529-2115
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_243806" class="asset_sub 243806  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											빠른입주, 전망좋음,올리모델링된집
가격조정가
날마다 좋은날 되세요^^
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '229846')" class="firstrow asset_main 229846  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center"><span style="color:red">전세</span></td>
						<td class="ta_center no_strike">동해면</td>
						<td>
							<span class="no_strike">별장맨션</span>
							<span id="comment_mark_229846"></span>
							<span id="favorite_mark_229846"></span>							
						</td>
						<td class="ta_center no_strike">92㎡ <span style="color:rgb(205,101,0)">[28]</span></td>
						<td class="ta_left no_strike">
							
							다동 탑층
							
						</td>
						<td class="ta_right no_strike">
							3,200							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-3400-1434
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_229846" class="asset_sub 229846  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 전체 올수리 된 밝고 깨끗한 집^^
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '230129')" class="firstrow asset_main 230129  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center"><span style="color:red">전세</span></td>
						<td class="ta_center no_strike">동해면</td>
						<td>
							<span class="no_strike">삼양전원타운</span>
							<span id="comment_mark_230129"></span>
							<span id="favorite_mark_230129"></span>							
						</td>
						<td class="ta_center no_strike">79㎡ <span style="color:rgb(205,101,0)">[24]</span></td>
						<td class="ta_left no_strike">
							
							102동 저층
							
						</td>
						<td class="ta_right no_strike">
							2,000							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-253-4546
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_230129" class="asset_sub 230129  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, *올수리*리모댈링*1층*, 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '230260')" class="firstrow asset_main 230260  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">동해면</td>
						<td>
							<span class="no_strike">일동아파트</span>
							<span id="comment_mark_230260"></span>
							<span id="favorite_mark_230260"></span>							
						</td>
						<td class="ta_center no_strike">76㎡ <span style="color:rgb(205,101,0)">[23]</span></td>
						<td class="ta_left no_strike">
							
							마동 중간층
							
						</td>
						<td class="ta_right no_strike">
							4,100							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-4529-7709
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_230260" class="asset_sub 230260  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											빠른입주, 도시가스  5층건물
010-5041-0669  로 연락주셔요, 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '230175')" class="firstrow asset_main 230175  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">동해면</td>
						<td>
							<span class="no_strike">협성비취타운2차</span>
							<span id="comment_mark_230175"></span>
							<span id="favorite_mark_230175"></span>							
						</td>
						<td class="ta_center no_strike">85㎡ <span style="color:rgb(205,101,0)">[26]</span></td>
						<td class="ta_left no_strike">
							
							2동 탑층
							
						</td>
						<td class="ta_right no_strike">
							4,100							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-4529-7709
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_230175" class="asset_sub 230175  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 탑층 도시가스 즉시입주  조정가능
연락주셔요  010-5041-0669
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '241495')" class="firstrow asset_main 241495  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"><img src="/WebContent/safehouse/image/check.PNG" width = "15" height ="15"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">상도동</td>
						<td>
							<span class="no_strike">별장맨션</span>
							<span id="comment_mark_241495"></span>
							<span id="favorite_mark_241495"></span>							
						</td>
						<td class="ta_center no_strike">115㎡ <span style="color:rgb(205,101,0)">[35]</span></td>
						<td class="ta_left no_strike">
							
							1개동 5층
							
						</td>
						<td class="ta_right no_strike">
							13,200							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-4192-8430
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_241495" class="asset_sub 241495  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											입주협의, 집주인 거주로  집상태 최상이며 완전 올수리된 집입니다 연락주시고 집보러오세요 양학동 보성아파트정문앞 보성부동산 소장입니다 ~~^^
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '237918')" class="firstrow asset_main 237918  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"><img src="/WebContent/safehouse/image/check.PNG" width = "15" height ="15"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">상도동</td>
						<td>
							<span class="no_strike">영광하이츠</span>
							<span id="comment_mark_237918"></span>
							<span id="favorite_mark_237918"></span>							
						</td>
						<td class="ta_center no_strike">105㎡ <span style="color:rgb(205,101,0)">[32]</span></td>
						<td class="ta_left no_strike">
							
							1개동 로얄층
							
						</td>
						<td class="ta_right no_strike">
							12,000							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-241-4985
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_237918" class="asset_sub 237918  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											입주협의, 상대시장안  .생활권편리함,예쁜구조 방3.욕실2.거실넓음..깨끗함
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '236665')" class="firstrow asset_main 236665  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"><img src="/WebContent/safehouse/image/check.PNG" width = "15" height ="15"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">상도동</td>
						<td>
							<span class="no_strike">해원빌라</span>
							<span id="comment_mark_236665"></span>
							<span id="favorite_mark_236665"></span>							
						</td>
						<td class="ta_center no_strike">56㎡ <span style="color:rgb(205,101,0)">[17]</span></td>
						<td class="ta_left no_strike">
							
							가동 1층
							
						</td>
						<td class="ta_right no_strike">
							4,000							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-246-4985
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_236665" class="asset_sub 236665  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 남부시장안.생활권 너무좋아요..방2.깨끗합니다, 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '235470')" class="firstrow asset_main 235470  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center"><span style="color:blue">월세</span></td>
						<td class="ta_center no_strike">상도동</td>
						<td>
							<span class="no_strike">해원빌라</span>
							<span id="comment_mark_235470"></span>
							<span id="favorite_mark_235470"></span>							
						</td>
						<td class="ta_center no_strike">56㎡ <span style="color:rgb(205,101,0)">[17]</span></td>
						<td class="ta_left no_strike">
							
							가동 1층
							
						</td>
						<td class="ta_right no_strike">
							300/32							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-241-4985
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_235470" class="asset_sub 235470  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 남부시장안 .생활권편리함.손댈곳없슴, 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '238297')" class="firstrow asset_main 238297  even">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center">매매</td>
						<td class="ta_center no_strike">상도동</td>
						<td>
							<span class="no_strike">해원빌라</span>
							<span id="comment_mark_238297"></span>
							<span id="favorite_mark_238297"></span>							
						</td>
						<td class="ta_center no_strike">56㎡ <span style="color:rgb(205,101,0)">[17]</span></td>
						<td class="ta_left no_strike">
							
							가동 저층
							
						</td>
						<td class="ta_right no_strike">
							4,000							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							054-241-4985
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_238297" class="asset_sub 238297  odd">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											즉시입주, 남부시장안..도시가스.방2.생활권너무편리함, 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="even"><td colspan="13"></td></tr>
										
				
					<tr style="cursor:pointer; " onclick="f_showmemo2($(this), '206927')" class="firstrow asset_main 206927  odd">
						<td class="ta_center first_td" style="text-align:left; padding-left:5px;">2015.09.29<span style="padding-left:3px"></span></td>
						<td class="ta_center"><span style="color:red">전세</span></td>
						<td class="ta_center no_strike">송도동</td>
						<td>
							<span class="no_strike">해원빌라</span>
							<span id="comment_mark_206927"></span>
							<span id="favorite_mark_206927"></span>							
						</td>
						<td class="ta_center no_strike">56㎡ <span style="color:rgb(205,101,0)">[17]</span></td>
						<td class="ta_left no_strike">
							
							1동 탑층
							
						</td>
						<td class="ta_right no_strike">
							4,500							
						</td>
						<td class="ta_center last_td"><span class="no_strike">
							010-4259-0288
							
						</span></td>
					</tr>
					
					
					<tr style="display:none" id="tr_sub_206927" class="asset_sub 206927  even">
							<td class="memo" colspan="8" style="border-top:0px; border-bottom:2px solid #5370f0"> 
								<div class="memo_item">
									<p class="memo_title" style="width:70px">매물설명</p>
									<div class="f_left">
										<span class="no_strike" style="max-width: 585px;display: inline-block">
											
											입주협의, *올수리/리모델링*신혼부부강추*, 융자 없음
										</span>
									</div>
									<div class="f_right">
									</div>
									<br style="clear:both">
								</div>
								
								<div class="memo_item" style="position:relative; text-align:right">
									
									<a href = "Detail.jsp" class ="memo_item_DetailButton" > <span>상세보기</span> </a> 
								</div>
							</td>
					</tr>
					<tr style="display:none" class="odd"><td colspan="13"></td></tr>
										
				
				
				
				</tbody></table>
				
				<div class="page">
					 <a href="javascript:f_goPage(1)"><img src="/WebContent/safehouse/image/pageleft.PNG" height = "20" border="0" alt="첫페이지"></a> <b>1</b> .  <a href="javascript:f_goPage(2)">2</a> .  <a href="javascript:f_goPage(3)">3</a> .  <a href="javascript:f_goPage(4)">4</a> .  <a href="javascript:f_goPage(5)">5</a> .  <a href="javascript:f_goPage(6)">6</a> .  <a href="javascript:f_goPage(7)">7</a> .  <a href="javascript:f_goPage(8)">8</a> .  <a href="javascript:f_goPage(9)">9</a> .  <a href="javascript:f_goPage(10)">10</a> <a href="javascript:f_goPage(11)"><img src="/WebContent/safehouse/image/pageright.PNG" height = "20" border="0" alt="다음 10 페이지"></a>				
				</div>
			
			</div>
<%@ include file="footer.jsp" %>

	
</body>

</html>