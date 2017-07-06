<html lang="ko" class="hfix">
<head>
<meta charset="UTF-8">
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
<title>지도 샘플</title>
<meta http-equiv="X-UA-Compatible" content="IE=9">

<script src="http://www.openlayers.org/api/2.13/OpenLayers.js" type="text/javascript"></script>
<script type="text/javascript" src="http://map.vworld.kr/js/apis.do?type=Base&apiKey=9404F854-2647-364C-9CDD-107D2C8AF921"></script>

<script type="text/javascript">
      var map;
	    var mapBounds = new OpenLayers.Bounds(123 , 32, 134 , 43);
	    var mapMinZoom = 7;
	    var mapMaxZoom = 19;

        // avoid pink tiles
        OpenLayers.IMAGE_RELOAD_ATTEMPTS = 3;
        OpenLayers.Util.onImageLoadErrorColor = "transparent";
        
        function init(){
        var options = {
            controls: [],
            projection: new OpenLayers.Projection("EPSG:900913"),
            displayProjection: new OpenLayers.Projection("EPSG:4326"),
            units: "m",
            controls : [],
            numZoomLevels:21,
            maxResolution: 156543.0339,
            maxExtent: new OpenLayers.Bounds(-20037508.34, -20037508.34, 20037508.34, 20037508.34)
            };
        map = new OpenLayers.Map('basemap', options);
		
		  				
		//======================================
		//1. 배경지도 추가하기
        vBase = new vworld.Layers.Base('VBASE');
		if (vBase != null){map.addLayer(vBase);}
		
		
        var switcherControl = new OpenLayers.Control.LayerSwitcher();
        map.addControl(switcherControl);
        switcherControl.maximizeControl();

        map.zoomToExtent( mapBounds.transform(map.displayProjection, map.projection ) );
          map.panTo(new OpenLayers.LonLat(14400821.17384,4302138.29227));
      //  map.panTo(14140740.892214,4521395.6921268);
    //  map.panTo(14140009.710048,4524707.4183749);
        if("A2SM_ODBLRCRMNLHSPOT_FEMALE"=="A2SM_CMMNPOI"){
        	map.zoomTo(17);	
        }else{
        	map.zoomTo(16);
        }
    

    
        map.addControl(new OpenLayers.Control.PanZoomBar());
        map.addControl(new OpenLayers.Control.MousePosition());
        map.addControl(new OpenLayers.Control.Navigation());
        //map.addControl(new OpenLayers.Control.MouseDefaults()); //2.12 No Support
        map.addControl(new OpenLayers.Control.Attribution({separator:" "}));
        addWmsLayer();
    }
   

	function addWmsLayer(){
	param = {name:"여성밤길 치안안전 전체",
 		serverUrl:"http://www.safemap.go.kr/sm/apis.do?apikey=I2ZHCGUU-I2ZH-I2ZH-I2ZH-I2ZHCGUU3X",
		layername:"A2SM_ODBLRCRMNLHSPOT_FEMALE",
		styles:"A2SM_OdblrCrmnlHspot_Tot"};
	var wmsLayer = new OpenLayers.Layer.WMS( param.name, param.serverUrl,
					      {layers: ''+param.layername, 
						   styles:param.styles,
						   format: 'image/png', 
						   exceptions:'text/xml',
						   transparent: true},
					      {isBaseLayer: false}
		               );	
map.addLayer(wmsLayer);

    param = {name:"여성사고(최근3년)",
    serverUrl:"http://www.safemap.go.kr/sm/apis.do?apikey=AGTO30NX-ERMO-FWDX-604X-G0QGERVJZH",
    layername:"A2SM_TFCACDHSPOT",
    styles:"A2SM_TfcacdHspot_Female"};
    var wmsLayer = new OpenLayers.Layer.WMS( param.name, param.serverUrl,
    {layers: ''+param.layername,
    styles:param.styles,
    format: 'image/png',
    exceptions:'text/xml',
    transparent: true},
    {isBaseLayer: false}
    );
    map.addLayer(wmsLayer);

	}
    </script>       
</head>
  <body onload="init()">
  <%@ include file="header.jsp" %>
  <div class="content_sub_left"  style="padding-left:15px">


			<!-- 타이틀.s -->
			<div class="main_title">
				<div style="border-bottom: 1px solid #5370f0;">
					<span class="main_title_apt">경인일호아파트</span>
					<span class="main_title_loc">포항남구 대도동</span>
					<div class="main_title_btn">
					</div>
				</div>

					
				<div style="background-color:#eef1fe; height: 60px;">
					<span class="main_title_info" style="min-width:170px; color:red">
					<!-- 물건이 가격 비공개이면, 일반사용자들에게는 절충으로 표시됩니다 -->
					매매 
					
						<span style="padding-left:5px;">6,000</span> 만원
					
					</span>
					<span class="main_title_info" style="min-width:70px">
						1개동
					</span>
					<span class="main_title_info" style="min-width:60px">
						4층
					</span>		
					<span class="main_title_info" style="min-width:60px">
						69㎡
					</span>
					<div class="main_title_info_date">
						<ul>
							<li>
								<span class="norm_letter" style="color:#5370f0; display:inline-block; width:70px; font-weight:bold">매물확인</span>
								<span class="norm_letter" style="color:#333333; margin-left:5px; font-weight:bold">2015.09.29</span>
							</li>
							<li>
								<span class="norm_letter" style="color:#5370f0; display:inline-block; width:70px">최초개제일</span> 
								<span class="norm_letter" style="color:#333333; margin-left:5px;">2015.09.07</span>							
							</li>
						</ul>
					</div>										
				</div>
			</div>
			<!--면적 convert -->
			<div class="popup search_slayer" id="detail_pinfo" style="width: 75px; top: 93px; left: 384px; font-size: 10pt; display: none; background-color: white;">
				<div style="position:absolute; right:3px; top:0px; text-align:center;" onclick="javascript: f_clearLayer()">X</div>
				<p style="line-height:17px;">공급면적</p>
				<p style="line-height:17px; color:#5370f0; font-weight:bold;">21 평</p>
			</div>
			<!--면적 convert -->
			<!-- 타이틀.e -->
			
			
				
				
			
			<!-- ======= 정보 S ====== -->		
			<div style="border-radius:3px; border:1px solid #bfbfbf; margin-top:20px">
			
			
				<!-- #1.start -->
				<div>
					<div style="float:left">
						<h1 class="bold_letter detail_title" style="width: 465px;">기본정보 </h1>
						<div style="padding:10px 10px 10px 20px">
							<table class="detail_table" style="width:450px">
								<tbody><tr>
									<td class="cat" style="width:80px">금액</td>
									<td style="width:190px">6,000만원 </td>
									
									<td class="cat" style="width:60px">융자금</td>
									<td style="">-</td>
									
								</tr>
								<tr>
									
									<td class="cat">입주가능일</td>
									<td colspan="3">즉시입주</td>
									
								</tr>
								<tr>
									<td class="cat">문의처</td>
									<td colspan="3">
										
											OK 공인중개사무소
										
										<span style="padding-left:7px">(매물번호: 239818)</span>
									</td>
								</tr>
								<tr>
									<td class="cat">담당자</td>
									<td colspan="3">
									
									이준광 (054-241-4985)
										
									
									
									<span style="padding-left: 10px; color: green; "></span>
									</td>
								</tr>
							</tbody></table>
						</div>
					</div>
					<div style="float:left; width:222px; border-left: 1px solid #eaeaea;">
						<h1 class="bold_letter detail_title">시세</h1>
						<div style="padding:20px; padding-top:10px;">
							<table class="detail_table"> 
								<tbody><tr>
									<td class="cat" style="width:80px">매매일반</td>
									<td>0 만원</td>
								</tr>
								<tr>
									<td class="cat">전세일반</td>
									<td>0 만원</td>
								</tr>
								<tr>
									<td class="cat">전세율</td>
									<td>0%</td>
								</tr>
								<tr>
									<td colspan="2" style="padding-top:10px;">
										
										<a href="http://rt.molit.go.kr/rtSearch.do?cmd=rtSearch&amp;menuGubun=A&amp;srhType=LOC#12206116,47,47111,4711110200,,,12206116,2015,3,1" target="_blank">
										<img src="/WebContent/safehouse/image/realshow.PNG" onmouseover=" this.src = '/WebContent/safehouse/image/realshow.PNG'" onmouseout="this.src='/WebContent/safehouse/image/realshow.PNG'" alt="국토교통부 실거래가 보기">
										</a>
										
									</td>
								</tr>
							</tbody></table>
						</div>
					</div>
					<br style="clear:both">
					
					
					<div style="border-top:1px solid #eaeaea; padding:10px 10px 10px 20px">
						<table class="detail_table">
							<tbody><tr>
								<td class="cat" style="width:80px; vertical-align:top; padding-top:4px">매물설명</td>
								<td colspan="3">문화예술회관 건너편..샷시 .바닥공사.씽크대.신발장.욕실.2년전 올수리했어요.. </td>
							</tr>
						</tbody></table>
					</div>		
				</div>	
				<!-- #1. end -->	
					
				 <div id="map" style="width:60%;height:350px;" style="padding-left:15px" ></div>

        <!-- 지도타입 컨트롤 div 입니다 -->
        <div class="custom_typecontrol radius_border">
        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
        </div>


        <script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=55f963883949bc753ea770926b224e1a"></script>


        <script>



        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
        center: new daum.maps.LatLng(36.0114745, 129.3659577), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
        };

        var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 마커가 표시될 위치입니다
        var markerPosition  = new daum.maps.LatLng(36.0114745,129.3659577);

        // 마커를 생성합니다
        var marker = new daum.maps.Marker({
        position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
        // marker.setMap(null);

        // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
        var mapTypeControl = new daum.maps.MapTypeControl();

        // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
        // daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
        map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new daum.maps.ZoomControl();
        map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);


        </script>


											

				<!-- #3.start -->
				<div style="border-top:1px solid #d5dcfb">
					<h1 class="bold_letter detail_title">상세정보</h1>
					<div style="border-right:1px solid #eaeaea; padding:20px; padding-top:10px;">
						<table class="detail_table" style="">
							<tbody><tr>
								<td class="cat" style="width:90px">소재지</td>
								<td colspan="5">포항남구 대도동 경북 포항시 남구 문예로40번길 16 (대도동 146-1)</td>
							</tr>
							<tr style="height:10px">
								<td colspan="6"></td>
							</tr>
							<tr height="25">
								<td class="cat" style="width:90px">공급면적</td>
								<td style="width:140px">69㎡ (21평)</td>
								<td class="cat" style="width:90px">총동수</td>
								<td style="width:160px">1개동</td>
								<td class="cat" style="width:80px">해당동</td>
								<td>1개</td>
							</tr>
							<tr height="25">
								<td class="cat">해당층/총층</td>
								<td>4층 / 5층</td>
								<td class="cat">방수/욕실수</td>
								<td>개 / 개</td>
								<td class="cat">총세대수</td>
								<td>30세대</td>
							</tr>
							<tr height="25">
								<td class="cat">총주차대수</td>
								<td></td>
								<td class="cat">세대당 주차</td>
								<td>-</td>
								<td class="cat">방향</td>
								<td> -- </td>
							</tr>
							<tr height="25">
								<td class="cat">난방연료</td>
								<td></td>
								<td class="cat">건설사</td>
								<td></td>
								<td class="cat">준공년월</td>
								<td></td>
							</tr>
							<tr height="25">
								<td class="cat">현관구조</td>
								<td></td>
								<td class="cat">관리사무소<br>전화번호</td>
								<td></td>
							</tr>
						</tbody></table>
					</div>
				</div>	
				<!-- #3. end -->



				<!-- #4.start -->
				<div style="border-top:1px solid #d5dcfb">
					<div style="float:left; width:353px">
						<h1 class="bold_letter detail_title">세금</h1>
						<div style="border-right:1px solid #eaeaea; padding:20px; padding-top:10px;">
							<table class="detail_table">
								<tbody><tr>
									<td class="cat" style="width:90px">취득세</td>
									<td>66 만원</td>
								</tr>
								<tr>
									<td class="cat" style="width:90px">중개수수료</td>
									<td>30 만원</td>
								</tr>
								<tr>
									<td class="cat" style="width:90px">등기수수료</td>
									<td>20 만원</td>
								</tr>
							</tbody></table>
						</div>
					</div>
					<div style="float:left; width:350px">
						<h1 class="bold_letter detail_title">대출정보</h1>
						<div style="padding:20px; padding-top:10px;">
							<table class="detail_table"> 
								<tbody><tr>
									<td width="100" style="color:#8096f4; font-weight:bold">금융기관</td>
									<td width="100" style="color:#8096f4; font-weight:bold">대출한도</td>
									<td width="100" style="color:#8096f4; font-weight:bold">대출금리</td>
								</tr>
								
								<tr>
									<td>제일은행</td>
									<td>~ 0 만원</td>
									<td>4.01 ~ </td>
								</tr>
								
								<tr>
									<td>하나은행</td>
									<td>~ 0 만원</td>
									<td>4.67 ~ 4.73</td>
								</tr>
								
							</tbody></table>
						</div>
					</div>
					<br style="clear:both">		
				</div>	
				<!-- #4. end -->
				
				
				<!-- #5.start -->
				<div style="border-top:1px solid #d5dcfb">
					<h1 class="bold_letter detail_title">주변환경</h1>
					<div style="padding:20px">
						<table class="detail_table"> 
							<tbody><tr height="30">
								<td class="cat" style="width:90px">편의시설</td>
								<td>시외버스터미널, 홈플러스,롯데슈퍼센터, 대도시장, 형산시장, 상대종합시장</td>	
							</tr>
							<tr height="30">
								<td class="cat">교육환경</td>
								<td>대도초, 대해초, 상도중, 항도중, 세명고</td>
							</tr>
							<tr height="30">
								<td class="cat">공원/녹지</td>
								<td>해도근린공원</td>
							</tr>
							<tr height="30">
								<td class="cat">의료시설</td>
								<td>세명기독병원, 에스포항병원, 성모병원</td>
							</tr>
						</tbody></table>
					</div>
				</div>	

				
				
								
				<!-- #5. end -->		
				
							
				<!-- #6.start -->
				<div style="border-top:1px solid #d5dcfb">
					<h1 class="bold_letter detail_title">매물 주변 정보</h1><span style="color:red">(공공데이터 사용)</span>
					<div style="padding:20px">
						<table bgColor=#C1D2F7 class="detail_table_plus" width = "800"> 
							<tbody ><tr height="30">
								<td class="cat" style="width:150px">강력범 발생 비율</td>
								<td><font color="red"> 다소 높음 (5.9%)</font> </td>	
							</tr>
							<tr height="30">
								<td class="cat">십만 명당 범죄 발생 건수</td>
								<td><font color="red"> 매우 높음 (21.9건)</font> </td>
							</tr>
	
						<tr>  
  
						</tr>
						</tbody></table>
					</div>
				</div>	
				여성 밤길 안전 지도 ( 출처 : 공공데이터포털 ) 
				  <div id="basemap"  style="width:45%;height:45%; padding-left:15px"></div>


<%@ include file="footer.jsp" %>


  </body>
</html> 