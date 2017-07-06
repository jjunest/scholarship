/**
 * 
 */

/**
	 * 최초진입
	 * 검색엔진 공통 스크립트 포함.
	 */
	$(function(){
		//빈공간 클릭시 레이어팝업을 모두 닫는다.
		$('html').click(function() {
			if($("#ui-datepicker-div").css("display")==undefined || $("#ui-datepicker-div").css("display") == "none"){	//jquery 달력버튼 때문에.
				$(".popup").hide();
			}
			
			if(   $("#registerBox").css("display") == "none" && $("#popup_container").css("display") == "none" ){ //회원가입 창 때문에.
				$("#overlay").hide();
			}
			$("#overlay2").hide();

		});
		
		//전체선택시
		$("#select_all").on("click", f_selAll);	
		
		
		
		
		//레이어팝업을 호출하는 요소 클릭시.(검색엔지관련해서는 inc..에서 모두 처리)
		$('.showpopup_normal').click(function(e){
			e.stopPropagation();
			if($(this).hasClass("slayer_note")){		f_open_normal($(this), 'slayer_note', 'leftcenter');
			}
		});
		
		$('.stopprop').on("click", function(e){
			e.stopPropagation();
		});
		
	});
	
	
	///레이어를 닫는다.
	function f_clearLayer(){
		if($("#ui-datepicker-div").css("display")==undefined || $("#ui-datepicker-div").css("display") == "none"){	//jquery 달력버튼 때문에.
			$(".popup").hide();
		}
		$("#overlay").hide();
		$("#overlay2").hide();
	}
	
	
	/**
	 * == 레이어오픈
	 * 
	 * o: 클릭된 Element
	 * l_nm: 팝업으로 띄울 레이어 id값
	 * loc: 팝업위치
	 * gbn: APT,LAND...
	 * assetidx: 키값
	 * userid: 로그인사용자(손님일경우 '')  
	 */
	function f_open_normal(o, l_nm, loc, gbn, assetidx, userid, r_userid){
		$("[id^=slayer]").css("display", "none");//모든 slayer를 닫는다. 
		
		var offset = $(o).offset();
		var div = $("#"+l_nm);
		
		//레이어팝업 위치조정
		if(loc=="leftcenter"){
			var h = $(div).height();
			var w = $(div).width();
			$(div).css(	{top:$(o).offset().top+( h / 6 ), left:$(o).offset().left-(w+20)} ) ;
		}else if( loc == "leftcenter_agent" ){
			var h = $(div).height();
			var w = $(div).width();
			$(div).css(	{top:$(o).offset().top + (h/3), left:$(o).offset().left-(w+20)} ); 
		}else{
			$(div).css(	{top:$(o).offset().top, left:$(o).offset().left} );	 
		}
		
		
		
		//쪽지 보내기일 경우 해당 idx의 수신자정보를 불러온다
		if(l_nm=="slayer_note"){
			if(assetidx){
				$.ajax({
					url: "/masterJson.do", 
					type: "post",
					data: {
						"selAction" : "get_note_receiver_info",
						"gbn" : gbn,
						"idx" : assetidx 
					},
					dataType: "json",
					error: function(){ alert('error - 001'); },
					success: function(data){
						
						$(".area_receiver_name").html(data.agent_nick+"공인중개사 " + data.user_name);
						$("#frmNote input[name='RECEIVER_ID']").val(data.user_id);
						$("#frmNote input[name='SOME_GUBUN']").val(gbn);
						$("#frmNote input[name='SOME_IDX']").val(assetidx);
						$("#frmNote textarea[name='CONTENT']").val(data.desc);
						$(div).css("display", "block");
					}
				});
			}else{
				alert("잘못된 호출입니다.");
				return;
			}
			
			
		//답장 쪽지보내기 (보낸사용자정보를 불러온다)
		}else if(l_nm=="slayer_note_return"){
			if(r_userid){
				$.ajax({
					url: "/masterJson.do", 
					type: "post",
					data: {
						"selAction" : "get_note_receiver_info_return",
						"r_userid" : r_userid 
					},
					dataType: "json",
					error: function(){ alert('error - 002'); },
					success: function(data){
						$(".area_receiver_name").html(data.user_name + " ["+data.agent_nm+"]");
						$("#frmNoteReturn input[name='RECEIVER_ID']").val(data.user_id);
						
						$(div).css("display", "block");
					}
				});
			}else{
				alert("잘못된 호출입니다.");
				return;
			}
			
		//허위매물신고
		}else if(l_nm == "slayer_singo"){
			$("#frmSingo input[name='SOME_GUBUN']").val(gbn);
			$("#frmSingo input[name='SOME_IDX']").val(assetidx);
			$(div).css("display", "block");
			
		//관리자에게 쪽지보내기
		}else if(l_nm=="slayer_note_admin"){
			$(div).css("display", "block");
		}else{
			alert("잘못된 호출입니다.");
			return;
		}
		
		$("#overlay2").show();

	}
	
	
	
	
	
	
	
	//모두선택
	function f_selAll(){
		var checkboxes = $("#asset_list_tbl").find(':checkbox').not("#select_all");
		if($(this).is(':checked')){
			checkboxes.each(function(){
				this.checked = "checked";
			});
		}else{
			checkboxes.each(function(){
				this.checked = "";
			});
		}
	}
	
	//선택된것 모두 클리어
	function f_selAll_clear(){
		var checkboxes = $("#asset_list_tbl").find(':checkbox').not("#select_all");
		checkboxes.each(function(){
			this.checked = "";
		});
	}
	
	
	//라인 클릭시
	function f_showmemo(o){
		var b = $(o).hasClass("blue");
		$(".asset_main").removeClass("blue");
		$(".asset_sub").hide();
		if(!b){
			$(o).addClass("blue");
			$(o).next().show();
		}
	}
	
	
	//라인 클릭시
	function f_showmemo2(o, idx){
		var b = $(o).hasClass("blue");
		//$(".asset_main").removeClass("blue");
		$(".asset_sub ."+idx).show();
		if(!b){
			$(o).addClass("blue");
			$(o).next().show();
		}else{
			$(o).removeClass("blue");
			$(o).next().hide();
		}
	}
	
	
	//라인 클릭시 
	function f_showmemo_user(v){
		var b = $("."+v).hasClass("blue");
		//$(".asset_main").removeClass("blue");
		//$(".asset_sub").removeClass("blue");
		//$(".asset_sub").hide();
		if(!b){
			$("."+v).addClass("blue");
			$("#tr_sub_"+v).show();
		}else{
			$("."+v).removeClass("blue");
			$("#tr_sub_"+v).hide();
		}
	}
			
	
	//매물 상세보기
	function f_goAssetDetail(idx){
		var frm = document.forms.frmMenu;
		frm.idx.value = idx;
		frm.action = "/assetDetail.do";
		frm.submit();
	}
	
	//상세내용을 보여준다.
	function f_goAssetDetail_popup(idx, contact_flag ){
		var d = new Date(); 
		var pop_nm = d.getTime();
		
		var v = window.open('/jsp/common/pageLoading.html', 'detail_'+pop_nm, '');

		var	frm = document.forms.frmMenu;
		frm.selAction.value = "V";
		if( frm.SOME_GUBUN.value == 'APT' ) { frm.contactFlag.value = (  contact_flag == '' ? '' : contact_flag ) ; }
		frm.idx.value = idx;
		frm.target = "detail_"+pop_nm;
		frm.method = "post";
		frm.action = "/assetDetail.do";
		frm.submit();
		v.focus();
	}	
	
	
	//페이징.
	function f_goPage(no, act){
		var frm = document.forms.frmList;
		if(typeof(frm)==="undefined"){
			frm = document.forms.frmSearch;
		}
		
		frm.selAction.value = "V";
		frm.selPageNo.value = no;
		
		frm.target = "";
		frm.method = "post";
		if(act){
			frm.action = act;
		}else{
			frm.action = "/assetList.do";	
		}
		
		frm.submit();
	}
	
	
	//페이징.
	function f_goPage_fav(no, act){
		var frm = document.forms.frmList;
		if(typeof(frm)==="undefined"){
			frm = document.forms.frmSearch;
		}
		
		frm.selAction.value = "V_FAV";
		frm.selPageNo.value = no;
		
		frm.target = "";
		frm.method = "post";
		if(act){
			frm.action = act;
		}else{
			frm.action = "/assetList.do";	
		}
		
		frm.submit();
	}
	
	
	
	
	/**
	 * ====== 쪽지 보내기 ========
	 */
	function f_sendSMS(isClose){
		f_notesms('sms', isClose);
	}
	function f_sendNote(isClose){
		f_notesms('note', isClose);
	}
	function f_sendNoteAdmin(isClose){
		f_notesms('noteadmin', isClose);
	}
	function f_sendNoteReturn(isClose){
		f_notesms('notereturn', isClose);
	}
	function f_notesms(gbn, isClose){
		var frm = document.forms.frmNote;
		if(gbn=="sms"){
			frm = document.forms.frmSms;	
		}else if(gbn=="note"){
			frm = document.forms.frmNote;
		}else if(gbn=="notereturn"){	
			frm = document.forms.frmNoteReturn;
		}else if(gbn=="noteadmin"){
			frm = document.forms.frmNoteAdmin;
		}
		
		
		
		if(frm.SENDER_NAME.value == ""){
			alert("보내는 이를 입력해주세요.");
			return false;
		}
		if(frm.CONTENT.value == ""){
			alert("내용을 입력해주세요.");
			return false;
		}

		if(gbn =="sms"){
			alert("90byte 체크 후 자르기");
		}
		
		var m1 = "";
		if($("#note_guesst_sender_mobile1").length>0){
			if($("#note_guesst_sender_mobile1").val() == ""
				|| $("#note_guesst_sender_mobile2").val() == ""
				|| $("#note_guesst_sender_mobile3").val() == ""){
				
				alert("전화번호를 입력해주세요!");
				return false;
				
			}else{
				m1 = $("#note_guesst_sender_mobile1").val()+"-"+$("#note_guesst_sender_mobile2").val()+"-"+$("#note_guesst_sender_mobile3").val();
			}
		}
		
		
		
		
		$.ajax({
			url: "/masterJson.do", 
			type: "post",
			data: {
				"selAction" : "send_notesms",
				"gbn" : gbn,
				"SENDER_ID" : frm.SENDER_ID.value,
				"SENDER_NAME" : frm.SENDER_NAME.value,
				"RECEIVER_ID" : frm.RECEIVER_ID.value,
				"SOME_GUBUN" : frm.SOME_GUBUN.value,
				"SENDER_MOBILE" : m1,
				"CONTENT" : frm.CONTENT.value,
				"SOME_IDX" : frm.SOME_IDX.value 
			},
			dataType: "json",
			error: function(){ alert('error - 003'); },
			success: function(data){
				if(data.result=="SUCCESS"){
					if(gbn=="sms"){	alert("sms가 발송되었습니다.");
					}else if(gbn=="note" || gbn=="notereturn"){	alert("쪽지가 발송되었습니다.");
					}
					
					frm.CONTENT.value = "";
					frm.SENDER_MOBILE.value = "";
					$(".area_receiver_name").html("");
					
					if(isClose){
						//$("[id^=slayer]").css("display", "none");//모든 slayer를 닫는다.
						f_clearLayer();
					}
				}else{
					alert("요청하신 작업도중 오류가 발생했습니다");
				}
			}
		});
	}	

	

	/**
	 * ========= 나만의 메모 =========
	 */
	var tmpComment = "";
	//나만의 메모 등록
	function f_commentRegist(gbn, idx){
		if($("#asset_comment_"+idx).val() == ""){
			alert("내용을 입력해주세요!");
			return false;
		}
		$.ajax({
			url: "/masterJson.do", 
			type: "post",
			data: {
				"selAction" : "insert_comment",
				"SOME_GUBUN" : gbn,
				"asset_comment" : encodeURI($("#asset_comment_"+idx).val()), 
				"idx" : idx
			},
			dataType: "json",
			error: function(){ alert('error - 004'); },
			success: function(data){
				if(data.result=="SUCCESS"){
					$("#comment_view_"+idx).html(
							'<span class="asset_comment_member">'+$('#asset_comment_'+idx).val()+'</span>'
							+' <input type="hidden" id="asset_comment_'+idx+'" value="'+$('#asset_comment_'+idx).val()+'">'
							+' <a href="javascript: f_commentModify(\''+gbn+'\', '+idx+')" class="asset_btn">수정</a>'
							+' <a href="javascript: f_commentDelete(\''+gbn+'\', '+idx+')" class="asset_btn">삭제</a>');
					$("#comment_mark_"+idx).html("<img src='/img/icon_new/memo_s.png' alt='나만의메모'/>");
				}else{
					alert("요청하신 작업도중 오류가 발생했습니다");
				}
			}
		});
	}
	//수정 요청시
	function f_commentModify(gbn, idx){
		tmpComment =  $("#asset_comment_"+idx).val();	//취소했을 경우 이전메모 복구용
		$("#comment_view_"+idx).html(
				' <input type="text" id="asset_comment_'+idx+'" value="'+tmpComment+'" class="asset_comment_member">'
				+' <a href="javascript: f_commentUpdate(\''+gbn+'\', '+idx+')" class="asset_btn">저장</a>'
				+' <a href="javascript: f_commentCancel(\''+gbn+'\', '+idx+')" class="asset_btn">취소</a>');
	}
	//취소버튼 클릭시 -> 
	function f_commentCancel(gbn, idx){
		$("#comment_view_"+idx).html(
				'<span class="asset_comment_member">'+tmpComment+'</span>'
				+' <input type="hidden" id="asset_comment_'+idx+'" value="'+tmpComment+'">'
				+' <a href="javascript: f_commentModify(\''+gbn+'\', '+idx+')" class="asset_btn">수정</a>'
				+' <a href="javascript: f_commentDelete(\''+gbn+'\', '+idx+')" class="asset_btn">삭제</a>');
	}
	
	//수정버튼 클릭시
	function f_commentUpdate(gbn, idx){
		if($("#asset_comment_"+idx).val() == ""){
			alert("내용을 입력해주세요!");
			return false;
		}
		$.ajax({
			url: "/masterJson.do", 
			type: "post",
			data: {
				"selAction" : "update_comment",
				"asset_comment" : encodeURI($("#asset_comment_"+idx).val()), 
				"SOME_GUBUN" : gbn,
				"idx" : idx
			},
			dataType: "json",
			error: function(){ alert('error - 005'); },
			success: function(data){

				$.each(data, function(key, ele){
					$("#comment_view_"+idx).html(
							'<span class="asset_comment_member">'+$("#asset_comment_"+idx).val()+"</span>" 
							+' <input type="hidden" id="asset_comment_'+idx+'" value="'+$("#asset_comment_"+idx).val()+'"  />'
							+' <a href="javascript: f_commentModify(\''+gbn+'\', '+idx+')" class="asset_btn">수정</a>'
							+' <a href="javascript: f_commentDelete(\''+gbn+'\', '+idx+')" class="asset_btn">삭제</a>');
				});
			}
		});
	}
	//삭제버튼 클릭시
	function f_commentDelete(gbn, idx){
		if(confirm("나만의 메모를 삭제하시겠습니까?")){
			$.ajax({
				url: "/masterJson.do", 
				type: "post",
				data: {
					"selAction" : "delete_comment",
					"comment" : encodeURI($("#asset_comment_"+idx).val()), 
					"SOME_GUBUN" : gbn,
					"idx" : idx
				},
				dataType: "json",
				error: function(){ alert('error - 006'); },
				success: function(data){

					$.each(data, function(key, ele){
						$("#comment_view_"+idx).html(
								' <input type="text" id="asset_comment_'+idx+'" value="" class="asset_comment_member" />'
								+' <a href="javascript: f_commentRegist(\''+gbn+'\', '+idx+')" class="asset_btn">등록</a>');
						
						$("#comment_mark_"+idx).html('');
					});
				}
			});
			

		}
	}


	
	
	
	

	
	/** 
	 * ======== 관심매물 =========
	 */
	//선택한 것 관심매물 담기
	function f_insertFav(gbn, idx){
		f_Fav("insert", gbn, idx);
	}
	function f_deleteFav(gbn, idx){
		f_Fav("delete", gbn, idx);
	}
	function f_deleteFav_favpage(gbn, idx){
		f_Fav("delete", gbn, idx, true);
	}
	function f_Fav(act, gbn, idx, isMem){
		var msg1 = (act=="insert")? "선택하신 매물을 관심매물로 등록하시겠습니까?\n\n본인이 등록한 매물은 관심매물로 추가되지 않습니다." : "선택된 매물을 관심매물에서 제거하시겠습니까?";
		var msg2 = (act=="insert")? "관심매물로 추가되었습니다." : "관심매물이 제거되었습니다.";
	
		var arr_idx = [];
		if(idx){	//한건씩등록할 경우
			arr_idx[0] = idx;
		}else{
			var arr = $("#asset_list_tbl input[name=asset_idx]:checked");
			if(arr.length==0){
				alert("매물을 선택해주세요!!");
				return;
			}
			for(var i=0; i<arr.length; i++){
				arr_idx[i] = $(arr[i]).val();
			}
		}
		
		if(confirm(msg1)){
			$.ajax({
				url: "/masterJson.do", 
				type: "post",
				data: {
					"selAction" : (act=="insert")? "insert_favorite" : "delete_favorite",
					"SOME_GUBUN" : gbn,
					"arr_idx" : JSON.stringify(arr_idx)
				},
				dataType: "json",
				error: function(){ alert('error - 007'); },
				success: function(data){
					if(data.result == "SUCCESS"){
						
						
						//부동산회원 관심매물 목록일 경우 reload한다.
						if(isMem){
							alert(msg2);
							f_reload();
						}else{
							
							for(var i=0; i<arr_idx.length; i++){
								if(act=="insert"){
									$("#favorite_btn_"+arr_idx[i]).html('<span class="brdbt_interest_ccl" onclick="javascript: f_deleteFav(\''+gbn+'\', \''+arr_idx[i]+'\')"></span>');
									$("#favorite_mark_"+arr_idx[i]).html("<img src='/img/icon_new/fav_s.png' alt='관심매물'/>");
								}else{
									$("#favorite_btn_"+arr_idx[i]).html('<span class="brdbt_interest" onclick="f_insertFav(\''+gbn+'\', \''+arr_idx[i]+'\')"</span>');
									$("#favorite_mark_"+arr_idx[i]).html('');
								}
							}
							alert(msg2);
							f_selAll_clear();
						}
					}else{
						alert("요청하신 작업도중 오류가 발생했습니다\n\n관리자에게 문의바랍니다.");
					}
						
				}
			});
		}
	}

	
	
	
	

	/** 
	 * ======== 거래완료 =========
	 */
	function f_completeRequest(gbn, idx){//거래완료요청
		f_Compl("req", gbn, idx);
	}
	function f_completeRequest_me(gbn, idx){//자기물건 거래완료
		f_Compl("req", gbn, idx, true);
	}
	function f_completeCancel(gbn, idx){
		f_Compl("cancel", gbn, idx);
	}
	function f_Compl(act, gbn, idx, isMine){
		var msg = (act=="req") ? "해당 매물을 거래 완료로 변경하시겠습니까?" : "해당 매물의 거래완료 요청을 취소하시겠습니까?";
		
		
		if(confirm(msg)){
			$.ajax({
				url: "/masterJson.do", 
				type: "post",
				data: {
					"selAction" : (act=="req")?"complete_request" : "complete_cancel",
					"SOME_GUBUN" : gbn,
				    "idx" : idx
				},
				dataType: "json",
				error: function(){ alert('error - 008'); },
				success: function(data){
			
					if(data.result == "SUCCESS"){
						//alert("요청이 처리되었습니다");
						if(act=="req"){
							if(isMine){
								$("#complete_mark_"+idx).html('<img src="/img/icon_new/btn_comp.png">');
								$("#complete_mark_"+idx).show();
								$("#complete_btn_"+idx).html("").hide();
								$("tr."+idx).find(".no_strike").removeClass().addClass("strike");
								//$("tr."+idx).addClass("color_blur"); 
							}else{
								$("#complete_mark_"+idx).html('<img src="/img/icon_new/btn_comp_me.png">');
								$("#complete_mark_"+idx).show();
								$("#complete_btn_"+idx).html('<span class="brdbt_done_ccl" onclick="javascript: f_completeCancel(\''+gbn+'\', \''+idx+'\')"></span>');
								$("tr."+idx).find(".no_strike").removeClass().addClass("strike");
								//$("tr."+idx).addClass("color_blur");
							}
							
							if(gbn!="APT"){
								$("#complete_mark_"+idx).css("display", "block");
							}
								
						}else{
							$("#complete_mark_"+idx).hide();
							$("#complete_btn_"+idx).html('<span class="brdbt_done" onclick="javascript: f_completeRequest(\''+gbn+'\', \''+idx+'\')"></span>');
							$("tr."+idx).find(".strike").removeClass().addClass("no_strike");
							//$("tr."+idx).removeClass("color_blur");
						}
						

						f_selAll_clear();
					}else{
						alert("요청하신 작업 도중 오류가 발생했습니다. 관리자에게 문의해주세요!");
					}
						
				}
			});
		}
		
	}
	




	
	/** 
	 * ======== 신고 =========
	 */
	function f_sendSingo(isClose){
		//기타일경우 사유 입력alert...
		
		var msg = "해당매물을 신고하시겠습니까?";
		if(confirm(msg)){
			$.ajax({
				url: "/masterJson.do", 
				type: "post",
				data: {
					"selAction" : "singo_request",
					"SENDER_ID" : $("#frmSingo input[name=SENDER_ID]").val(),
					"SENDER_NAME" : $("#frmSingo input[name=SENDER_NAME]").val(),
					"SOME_GUBUN" : $("#frmSingo input[name=SOME_GUBUN]").val(),
					"SOME_IDX" : $("#frmSingo input[name=SOME_IDX]").val(),
					"SINGO_REASON" : $("#frmSingo input[name=SINGO_REASON]:checked").val(),
					"SINGO_REASON_ETC" : $("#SINGO_REASON_ETC").val()
				},
				dataType: "json",
				error: function(){ alert('error - 009'); },
				success: function(data){
					if(data.result == "SUCCESS"){
						alert("요청이 처리되었습니다");
						
						$("#frmSingo input[name=SINGO_REASON]:input[value='1']").attr("checked", true);
						$("#frmSingo textarea[name=SINGO_REASON_ETC]").val("");
						if(isClose){
							//$("[id^=slayer]").css("display", "none");//모든 slayer를 닫는다.
							f_clearLayer();
						}
					}else{
						alert("요청하신 작업 도중 오류가 발생했습니다. 관리자에게 문의해주세요!");
					}
				}
			});
		}

	}	
	

	
	/*
	//신고할 경우
	function f_singoRequest(gbn){
		if(confirm("해당매물을 신고하시겠습니까?")){
			$.ajax({
				url: "/masterJson.do", 
				type: "post",
				data: {
					"selAction" : "singo_request",
					"SOME_GUBUN" : gbn,
					"singo_reason" : $("#frmSingo input[name=singo_reason]").val(),
					"singo_reason_etc" : $("#frmSingo input[name=singo_reason_etc]").val(),
					"idx" : $("#frmSingo input[name=idx]").val()
				},
				dataType: "json",
				error: function(){
					alert('에러가 발생했습니다.');
					f_closeLayer('slayer_singo');
				},
				success: function(data){
					if(data.result == "SUCCESS"){
						$("tr."+$("#frmSingo input[name=idx]").val()).find(".no_strike").removeClass().addClass("strike");
						
						$("#btn_singo_request_"+$("#frmSingo input[name=idx]").val()).hide();
						$("#btn_singo_cancel_"+$("#frmSingo input[name=idx]").val()).show();
					}else{
						alert('오류가발생했습니다.');	
					}
					f_closeLayer('slayer_singo');
				}
			});
		}
	}

	//신고를 취소할 경우
	function f_singoCancel(gbn, idx){
		if(confirm("허위매물 신고를 취소하시겠습니까?")){
			$.ajax({
				url: "/masterJson.do", 
				type: "post",
				data: {
					"selAction" : "singo_cancel",
					"SOME_GUBUN" : gbn,
				    "idx" : idx
				},
				
				dataType: "json",
				error: function(){
					alert('에러가 발생했습니다');
					f_closeLayer('slayer_singo');
				},
				success: function(data){
					if(data.result == "SUCCESS"){
						$("tr."+idx).find(".strike").removeClass().addClass("no_strike");
						$("#btn_singo_request_"+idx).show();
						$("#btn_singo_cancel_"+idx).hide();
					}else{
						alert("요청하신 작업도중 오류가 발생했습니다");
					}
				}
			});
		}
	}
	*/
	
	
	
	//매물관리 서브페이지 이동
	function f_sublist(gbn){
		var frm = document.forms.frmMenu;
		if(gbn=="LAND"){
			frm.action = "/memberAssetListLand.do";
		}else if(gbn=="SHOPRENT"){
			frm.action = "/memberAssetListShoprent.do";
		}else if(gbn=="SHOPDEAL"){
			frm.action = "/memberAssetListShopdeal.do";
		}else if(gbn=="HOUSE"){
			frm.action = "/memberAssetListHouse.do";
		}else if(gbn=="FACTORY"){
			frm.action = "/memberAssetListFactory.do";
		}else if(gbn=="ONEROOM"){
			frm.action = "/memberAssetListOneroom.do";			
		}else if(gbn=="ONLYUSER"){
			frm.action = "/memberAssetListOnlyUser.do";
		}else{	
			frm.action = "/memberAssetList.do";
		}
		frm.target = "";
		frm.selAction.value = "V";
		frm.SOME_GUBUN.value = gbn;
		frm.submit();
	}
	
	
	//매물관리 서브페이지 이동
	function f_sublist_fav(gbn){
		var frm = document.forms.frmMenu;
		if(gbn=="LAND"){
			frm.action = "/memberAssetListLand.do";
		}else if(gbn=="SHOPRENT"){
			frm.action = "/memberAssetListShoprent.do";
		}else if(gbn=="SHOPDEAL"){
			frm.action = "/memberAssetListShopdeal.do";
		}else if(gbn=="HOUSE"){
			frm.action = "/memberAssetListHouse.do";
		}else if(gbn=="FACTORY"){
			frm.action = "/memberAssetListFactory.do";
		}else{
			frm.action = "/memberAssetList.do";
		}
		frm.target = "";
		frm.selAction.value = "V_FAV";
		frm.SOME_GUBUN.value = gbn;
		frm.submit();
	}
	
	

	
	