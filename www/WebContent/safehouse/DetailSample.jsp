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
        map.panTo(new OpenLayers.LonLat(14140009.710048,4524707.4183749));
      //  map.panTo(14140740.892214,4521395.6921268);
        if("A2SM_ODBLRCRMNLHSPOT_FEMALE"=="A2SM_CMMNPOI"){
        	map.zoomTo(17);	
        }else{
        	map.zoomTo(14);
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
  <div class="content_sub_left">


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
								<span class="norm_letter" style="color:#5370f0; display:inline-block; width:70px; font-weight:bold">실매물확인</span>
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
										<img src="/img/icon_new/real_price_btn.jpg" onmouseover=" this.src = '/img/btn/real_show_over_btn.jpg'" onmouseout="this.src='/img/btn/real_show_btn.jpg'" alt="국토교통부 실거래가 보기">
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
					
				<!-- #2. start -->
				
								
				<div style="border-top:1px solid #d5dcfb">
					<div style="position:relative">
						<button type="button" class="slide_btn_l" style="position:absolute; left:0px; top:150px; z-index:99" onclick="javascript: f_show_image(-1,0)">&lt;</button>					
						<div id="map" style="overflow: hidden; padding: 0px; width: 703px; height: 375px;" class="_nmap_mapbox _nmap_uid(n520534133728) _nmap_diswheel _nmap_disdblclick"><div class="nmap" style="margin: 0px; padding: 0px; border: 0px; width: 703px; height: 375px; position: relative; overflow: hidden;"><div class="nmap_movable_container" style="position: absolute; z-index: 0; border: 0px; padding: 0px; margin: 0px; overflow: visible; left: 77px; top: -55px;"><div class="nmap_base_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 10; display: block;"><img src="http://onetile1.map.naver.net/get/130/0/0/12/4211/2297/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 223px; top: 59px;"><img src="http://onetile4.map.naver.net/get/130/0/0/12/4210/2297/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -33px; top: 59px;"><img src="http://onetile2.map.naver.net/get/130/0/0/12/4212/2297/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 479px; top: 59px;"><img src="http://onetile1.map.naver.net/get/130/0/0/12/4210/2298/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -33px; top: -197px;"><img src="http://onetile4.map.naver.net/get/130/0/0/12/4209/2298/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -289px; top: -197px;"><img src="http://onetile3.map.naver.net/get/130/0/0/12/4210/2296/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -33px; top: 315px;"><img src="http://onetile2.map.naver.net/get/130/0/0/12/4211/2298/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 223px; top: -197px;"><img src="http://onetile3.map.naver.net/get/130/0/0/12/4209/2297/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -289px; top: 59px;"><img src="http://onetile4.map.naver.net/get/130/0/0/12/4211/2296/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 223px; top: 315px;"><img src="http://onetile3.map.naver.net/get/130/0/0/12/4212/2298/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 479px; top: -197px;"><img src="http://onetile2.map.naver.net/get/130/0/0/12/4209/2296/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: -289px; top: 315px;"><img src="http://onetile1.map.naver.net/get/130/0/0/12/4212/2296/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 479px; top: 315px;"><img src="http://onetile4.map.naver.net/get/130/0/0/12/4213/2298/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 735px; top: -197px;"><img src="http://onetile3.map.naver.net/get/130/0/0/12/4213/2297/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 735px; top: 59px;"><img src="http://onetile2.map.naver.net/get/130/0/0/12/4213/2296/bl_vc_bg/ol_vc_an" alt="" width="256" height="256" style="position: absolute; border: 0px; margin: 0px; padding: 0px; max-width: none; max-height: none; width: 256px; height: 256px; left: 735px; top: 315px;"></div><div class="nmap_hybrid_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 20;"></div><div class="nmap_traffic_bicycle_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 40;"></div><div class="nmap_drawing_pane _nmap_uid(n1243162778695)" style="z-index: 60; position: absolute; overflow: visible; left: 0px; top: 0px; padding: 0px; margin: 0px; border: 0px;"></div><div class="nmap_overlay_pane _nmap_uid(n1327243597290)" style="z-index: 70; position: absolute; overflow: visible; left: 0px; top: 0px; padding: 0px; margin: 0px; border: 0px;"><div class="nmap_int_zoom" style="display:none"><span class="nmap_bx_lt"></span><span class="nmap_bx_rt"></span><span class="nmap_bx_lb"></span><span class="nmap_bx_rb"></span></div><img class="_nmap_marker nmap_png _nmap_uid(n674350117451)" alt="" width="28" height="37" src="http://static.naver.com/maps2/icons/pin_spot2.png" style="position: absolute; cursor: pointer; overflow: hidden; margin: -37px 0px 0px -14px; padding: 0px; border: 0px; max-width: none; max-height: none; width: 28px; height: 37px; top: 243px; left: 274px;"></div><div class="nmap_info_pane _nmap_uid(n649527491896)" style="z-index: 80; position: absolute; overflow: visible; left: 0px; top: 0px; padding: 0px; margin: 0px; border: 0px;"><div class="_nmap_uid(n139912201702)" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; border: 0px; margin: 0px; padding: 0px;"><div class="nmap_lay_htype1"><span class="nmap_lay_c"><span></span></span><span class="nmap_lay_r"></span></div></div><div class="nmap_duplayer nmap_openapi_duplayer _nmap_disdrag _nmap_diswheel _nmap_disdblclick" style="padding:0; margin:0; position:absolute; z-index:999; display:none; visibility:hidden;">
<div class="nmap_lay_int_duppin" style="position:relative; display:block;">
<div class="nmap_int_duppin_content">
<div class="nmap_scroll">
<ul class="_nmap_group">
</ul>
</div>
</div>
</div>
</div><div class="nmap_infowindow _nmap_diswheel _nmap_disdrag _nmap_disdblclick _nmap_disbubbling _nmap_uid(n927744593008)" style="position:absolute; top:0px; left:0px; z-index:999; display:none; border:0; margin:0; padding:0;-moz-user-select: text; -webkit-user-select: text;"><div class="nmap_infowindow_content" style="left: auto; right: 20px; top: auto; bottom: 20px;"></div></div><div class="_nmap_uid(n615444502258)" style="position: absolute; left: 0px; top: 0px; visibility: hidden; display: none; border: 0px; margin: 0px; padding: 0px;"><div class="nmap_lay_htype1"><span class="nmap_lay_c"><span></span></span><span class="nmap_lay_r"></span></div></div></div><div class="nmap_cadastral_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 30;"></div><div class="street_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 20;"></div><div class="nmap_ghost_pane" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 9;"></div><div class="nmap_static_container" style="position: absolute; top: 0px; left: 0px; border: 0px; padding: 0px; margin: 0px; overflow: visible; z-index: 0;"></div></div><div class="nmap_static_container" style="position: relative; z-index: 10; border: 0px; padding: 0px; margin: 0px; overflow: visible; width: 100%;"><div class="nmap_pano_dir nmap_pano_dir_move" style="z-index:20;display:none;"><div class="nmap_dir_icon" style="height:32px"><img src="http://static.naver.net/maps2/ico_pano_dir_final.png" width="900" height="400" class="png" style="max-width:none;max-height:none;"></div></div><div class="nmap_copyright_layer _nmap_diswheel _nmap_disdrag _nmap_disdblclick _nmap_disbubbling _nmap_uid(n487696369467)" style="top: 187.5px; display: none; left: 351.5px;"><div class="nmap_copyright_layer_body"><h5 class="nmap_copyright_tit" "="">지도 데이터&nbsp;&nbsp;&nbsp;</h5><div class="nmap_copyright_data"><span class="nmap_show" style="white-space:nowrap;">NAVER Corp.</span><span class="">/<a href="http://www.openstreetmap.org/copyright" target="_blank" style="font-family: nanumgothic,dotum,sans-serif !important">OpenStreetMap</a></span><span class="">/SPOT</span><span class="">/인천광역시</span><span class="">/국토지리정보원</span><span class="">/SK 플래닛/한국도로공사</span><span class="">/다울지오인포</span></div><a href="#" class="nmap_copyright_layer_close">닫기</a></div></div><div class="nmap_footer _nmap_uid(n1244287106565)" style="bottom: 4px;"><div class="nmap_copyright"><span class="nmap_show">©&nbsp;NAVER Corp.</span><span class="">/<a href="http://www.openstreetmap.org/copyright" target="_blank">OpenStreetMap</a></span><span class="">/SPOT</span><span class="">/인천광역시</span><span class="">/국토지리정보원</span><span class="">/SK 플래닛/한국도로공사</span><span class="">/다울지오인포</span><span class="nmap_cp_more">&nbsp;<a href="#">더보기</a></span></div><div class="nmap_scale_base"><a href="http://map.naver.com" target="_blank"><img class="nmap_logo_map" src="http://static.naver.net/maps/m/logo_naver.png" width="44" height="10" alt="NAVER" style="max-width:none;max-height:none;"></a><div class="nmap_scale_len"><span>50m</span></div></div></div><div class="nmap_scaler nmap_scaler_s14 _nmap_diswheel _nmap_disdrag _nmap_disdblclick _nmap_disbubbling nmap_scaler_re _nmap_uid(n1256369205477)" style="top: 10px; right: 30px; height: 199px;"><div class="nmap_ctr_zoom" style="height: 199px; left: 0px;"><div class="nmap_slider" style="height: 154px;"><div class="nmap_ctr_scale_on" style="height: 154px;"></div><!-- nmap_ctr_scale_off height max 레벨:9px, 간격 10px --><div class="nmap_ctr_scale_off" style="height: 29px;"></div><!-- ctr_level top max 레벨:9px, 간격 10px --><div class="nmap_slider-thumb S3759505" style="top: 29px;" title=""><img class="nmap_on" src="http://static.naver.net/maps2/blank.gif" width="18" height="15" alt=""></div></div><div class="nmap_ctr_plus"><a href="#"><img src="http://static.naver.net/maps2/blank.gif" width="24" height="24" alt="확대">확대</a></div><!-- 이미지 사이즈 변경 --><div class="nmap_ctr_minus" style="top: 173px;"><a href="#"><img src="http://static.naver.net/maps2/blank.gif" width="24" height="26" alt="축소">축소</a></div></div><!--동적으로 변경되는 classnmap_scaler_m(1-13)       : 설정 가능한 최대 레벨--><div class="nmap_ctr_legend nmap_scaler_m14" style="height: 145px; left: 22px;"><div class="nmap_ctr_legend1"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="부동산"></div><div class="nmap_ctr_legend2"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="거리"></div><div class="nmap_ctr_legend3"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="읍.면.동"></div><div class="nmap_ctr_legend4"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="시.군.구"></div><div class="nmap_ctr_legend5"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="시.도"></div><div class="nmap_ctr_legend6"><img src="http://static.naver.net/maps2/blank.gif" width="36" height="15" alt="국가"></div></div></div><div class="nmap_btn nmap_sel_basic _nmap_diswheel _nmap_disdrag _nmap_disdblclick _nmap_disbubbling _nmap_uid(n258742877768)" style="bottom: 10px; right: 80px;"><div class="nmap_sel_normal"><a href="#" class="nmap_on"><span class="nmap_btn_wrap">일반</span></a></div><div class="nmap_sel_satellite"><a href="#"><span class="nmap_btn_wrap">위성</span></a><div class="nmap_lay_default nmap_lay_satellite nmap_lay_satellite_t" style="display: none;"><div class="nmap_lay_body"><div><input type="checkbox" class="nmap_ip_check" id="ip_check3" checked="checked"> <label for="ip_check3">겹쳐보기</label></div></div></div></div></div></div></div></div>
						<div id="picture" style="display: none;">
										<!-- 적정 image size는 약 1.3 : 1 입니다.  -->
										<div class="img-container">
											<!-- 단지사진보기 -->
											
										</div>						
						</div>				
						<button type="button" class="slide_btn_r" style="position:absolute; right:0px; top:150px; z-index:99" onclick="javascript: f_show_image(1,0)">&gt;</button>																
					</div>
				</div>	
				<!-- #2. end -->
											

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
					<h1 class="bold_letter detail_title">매물 주변 정보</h1><span>(공공데이터 사용)</span>
					<div style="padding:20px">
						<table bgColor=#C1D2F7 class="detail_table_plus" width = "600"> 
							<tbody ><tr height="30">
								<td class="cat" style="width:150px">강력범 발생 비율</td>
								<td>xxxxxxxxx</td>	
							</tr>
							<tr height="30">
								<td class="cat">십만 명당 범죄 발생 건수</td>
								<td>yyyyyyyyyyy</td>
							</tr>
							<tr height="30">
								<td class="cat">가로등 설치 현황</td>
								<td>zzzzzzzzz</td>
							</tr>
							<tr height="30">
								<td class="cat">Safety Map</td>
								<td>uuuuuuuuuuuu</td>
							</tr>
						<tr>  
  
						</tr>
						</tbody></table>
					</div>
				</div>	
				= Woman Safety Map =
				  <div id="basemap"  style="width:45%;height:45%;"></div>


<%@ include file="footer.jsp" %>


  </body>
</html> 