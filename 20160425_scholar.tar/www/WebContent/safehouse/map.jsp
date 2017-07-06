<html lang="ko" class="hfix">
<head>
<meta charset="utf-8">
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
            displayProjection: new OpenLayers.Projection("EPSG:900913"),
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
    <div id="basemap"  style="width:45%;height:45%;"></div>
  </body>
</html> 