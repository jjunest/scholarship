/**
 * 
 */

/**
	 * 파일 업로드 기능
	 * @param id
	 */
	function f_fileUpload(id, allow_noimg){
		window.open('/jsp/common/pageLoading.html', 'fileUploader', 'top=100px,left=200px,width=320px,height=150px');

		var frm = document.createElement("form");
		var val = document.createElement("input");
		val.type="hidden";
		val.value = $("#"+id).val();
		val.name="files";
		frm.appendChild(val);

		var val2 = document.createElement("input");
		val2.type="hidden";
		val2.value = id;
		val2.name = "upload_gubun";
		frm.appendChild(val2);
		
		
		var iid = document.createElement("input");
		iid.type="hidden";
		iid.value = id;
		iid.name = "id";
		frm.appendChild(iid);

		
		if(allow_noimg){
			var nimg = document.createElement("input");
			nimg.type="hidden";
			nimg.value = "Y";
			nimg.name = "allow_noimg";
			frm.appendChild(nimg);	
		}
		
		document.body.appendChild(frm);
		
		frm.method = "post";
		frm.target = "fileUploader";
		frm.action = "/multi_upload.do";
		frm.submit();
	}
	
	/**
	 * 파일 업로더에서 파일이 추가되거나 제거되었을 때
	 * @param id
	 * @param str
	 * @param idx
	 */
	function filesChanged(id,str){
		var json = $.parseJSON(str);
		/*
		//이미지 한장만 허용할 때 마지마업로드된 파일만 나타낸다.
		$("#"+id).val("["+JSON.stringify(json[json.length-1])+"]");
		var imageArea = $("#area_"+id);
		imageArea.html('').hide().show();
		
		var i = json.length-1; 
		var imgDivId = json[i].sFileName.substring(0, json[i].sFileName.lastIndexOf('.'));
		var tmp = '<div id="'+imgDivId+'"><img src="'+json[i].url+'">'
				+ '<div onclick="javascript: f_delete_file('+idx+', \''+id+'\', this)">[Delete]</div>'
				+ '</div>';
		imageArea.append(tmp);
		//이미지 한장 끝.
		*/
				
		//이미지 여러장을 허용할 때 아래 로직.
		$("#"+id).val(str);
		var imageArea = $("#area_"+id);
		imageArea.html('').hide().show();
		for(var i=0;i<json.length;i++){
			var imgDivId = json[i].areaId;
			//var tmp = '<span id="'+imgDivId+'" style="margin-right:8px;"><a href="javascript:f_fileDownload(\''+id+'\','+i+');">'+json[i].name.replace(/%20/g,'&nbsp;')+'</a>';
			//	tmp += (/\.(gif|jpg|jpeg|bmp|png)$/i).test(json[i].name)?'&nbsp;&nbsp;<a href="javascript:f_viewImage(\''+id+'\','+i+');"><img src="/img/btn/ico_view_img.png" border="0"/></a>':'';
			var tmp =  '<div id="'+imgDivId+'" style="margin-right:8px; float:left;">';
				if((/\.(gif|jpg|jpeg|bmp|png)$/i).test(json[i].name)){
					tmp += '<img src="'+json[i].url+'" style="background-color:#fff; padding:0px; border:1px solid #777; width:200px; height:150px"/>';
					console.log(json[i].pyung_blueprint)
					if( "PYUNGINFO_PIC" == id ){
						tmp +='<div style="margin:4px; text-align:center;" >' + json[i].pyung_blueprint + '형</div>';
					}
					tmp += '<div style="margin:4px; text-align:center"><a href="javascript: f_delete_file(\''+imgDivId+'\', \''+id+'\', this)">이미지삭제<img src="/img/btn/btn_close.gif"/></a></div>';	
				}else{
					tmp += json[i].name;
					tmp += '<span style="margin:4px; text-align:center"><a href="javascript: f_delete_file(\''+imgDivId+'\', \''+id+'\', this)">파일삭제 <img src="/img/btn/btn_close.gif"/></a></span>';	
				}
				
				tmp	+= '</div>';
			imageArea.append(tmp);
		}
		imageArea.append('<br style="clear:both"/>');
		//이미지 여러장 끝.
		

		if(str=="[]"){	
			a.val('');
		}
	}
	
	
	
	//파일을 삭제한다.
	function f_delete_file(imgid, valueid, o){
		
		//화면에서 삭제
		$("#"+imgid).remove();
		
		//value에서 삭제
		var j2 = JSON.parse($("#"+valueid).val());
		for(var i=0; i<j2.length; i++){
			if(j2[i].areaId == imgid){
				j2.splice(i,1);	//파일에서 삭제.
				break;
			}
		}
		$("#"+valueid).val(JSON.stringify(j2));
		
	}
	
	
	
	
	/**
	 * 파일 다운로드 기능
	 * @param id
	 * @param i
	 */
	function f_fileDownload(id,i){
		var a = document.getElementById(id);
		if(a){
			var json = JSON.parse(a.value);
			var iframe = document.getElementById("iframe_fileDownload")?document.getElementById("iframe_fileDownload"):document.createElement("iframe");
			iframe.style.display = "none";
			iframe.name = "_fileDownload";
			iframe.id = "iframe_fileDownload";
			document.body.appendChild(iframe);
			
			var form = document.createElement("form");
			var fileName = document.createElement("input");
			fileName.type = "hidden";
			fileName.name = "fileName";
			fileName.value = json[i].name;
			form.appendChild(fileName);
			var fileURL = document.createElement("input");
			fileURL.type = "hidden";
			fileURL.name = "fileURL";
			fileURL.value = json[i].url;
			form.appendChild(fileURL);
			form.method = "post";
			form.action = "/download.do";
			form.target = "_fileDownload";
			
			document.body.appendChild(form);
			form.submit();
			document.body.removeChild(form);
		}
	}
	
	
	
	/**
	 * 이미지 미리보기
	 * @param id
	 * @param i
	 */
	function f_viewImage(id,i){
		var a = document.getElementById(id);
		if(a){
			var json = JSON.parse(a.value);
			viewImage = window.open(json[i].url, 'viewImage',  "top=0, left=0, status=no,scrollbars=yes,resizable=yes");
			viewImage[viewImage.addEventListener?'addEventListener':'attachEvent'](
					(viewImage.attachEvent ? 'on' : '') + 'load',function(){
						var width = $(viewImage.document.body).find("img").width()+25;
						var height = $(viewImage.document.body).find("img").height()+80;
						var left = (screen.availWidth-width)/2;
						var top = (screen.availHeight-height)/2;
						viewImage.resizeTo(width,height);
						viewImage.moveTo(left,top);
					},
					false
			);
		}
	}
	
	function f_showImageUrl(url){
		viewImage = window.open(url, 'viewImage',  "top=0, left=0, status=no,scrollbars=yes,resizable=yes");
		viewImage[viewImage.addEventListener?'addEventListener':'attachEvent'](
				(viewImage.attachEvent ? 'on' : '') + 'load',function(){
					var width = $(viewImage.document.body).find("img").width()+25;
					var height = $(viewImage.document.body).find("img").height()+80;
					var left = (screen.availWidth-width)/2;
					var top = (screen.availHeight-height)/2;
					viewImage.resizeTo(width,height);
					viewImage.moveTo(left,top);
				},
				false
		);
	}
			

	
	
	
	