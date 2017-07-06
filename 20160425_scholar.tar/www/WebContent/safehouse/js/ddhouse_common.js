/**
 * 
 */


	$(function(){
		//빈공간 클릭시 레이어팝업을 모두 닫는다.
		$('html').click(function() {
			if($("#ui-datepicker-div").css("display")==undefined || $("#ui-datepicker-div").css("display") == "none"){	//jquery 달력버튼 때문에.
				$(".popup").hide();
			}
		});
		
		
		$('.stopprop').on("click", function(e){
			e.stopPropagation();
		});
		
	});
	
	
	///레이어를 닫는다.
	function f_clearLayer(){
		if($("#ui-datepicker-div").css("display")==undefined || $("#ui-datepicker-div").css("display") == "none" ){	//jquery 달력버튼 때문에.
			$(".popup").hide();
		}
		$("#overlay").hide();
		$("#overlay2").hide();
	}
	
	
	
	
	
 function f_commaNum(num) {  
        var len, point, str;  
  
        num = num + "";  
        point = num.length % 3;
        len = num.length;  
  
        str = num.substring(0, point);  
        while (point < len) {  
            if (str != "") str += ",";  
            str += num.substring(point, point + 3);  
            point += 3;  
        }  
        return str;  
    } 
 
(function ($) {
	
	$.datepicker.regional['ko']= {
			  closeText:'닫기',
			  prevText:'이전달',
			  nextText:'다음달',
			  currentText:'오늘',
			  monthNames:['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUM)','7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
			  monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			  dayNames:['일','월','화','수','목','금','토'],
			  dayNamesShort:['일','월','화','수','목','금','토'],
			  dayNamesMin:['일','월','화','수','목','금','토'],
			  weekHeader:'Wk',
			  dateFormat:'yymmdd',
			  firstDay:0,
			  isRTL:false,
			  showMonthAfterYear:true,
			  yearSuffix:''
		 };
	$.datepicker.setDefaults($.datepicker.regional['ko']); 
	
	
    // 숫자 제외하고 모든 문자 삭제.
    $.fn.removeText = function(_v){
        //console.log("removeText: 숫자 제거 합니다.");
        if (typeof(_v)==="undefined")
        {
            $(this).each(function(){
                this.value = this.value.replace(/[^0-9]/g,'');
            });
        }
        else
        {
            return _v.replace(/[^0-9]/g,'');
        }
    };
     
    // php의 number_format과 같은 효과.
    $.fn.numberFormat = function(_v){
        this.proc = function(_v){
            var tmp = '',
                number = '',
                cutlen = 3,
                comma = ','
                i = 0,
                len = _v.length,
                mod = (len % cutlen),
                k = cutlen - mod;
                 
            for (i; i < len; i++)
            {
                number = number + _v.charAt(i);
                if (i < len - 1)
                {
                    k++;
                    if ((k % cutlen) == 0)
                    {
                        number = number + comma;
                        k = 0;
                    }
                }
            }
            return number;
        };
         
        var proc = this.proc;
        if (typeof(_v)==="undefined")
        {
            $(this).each(function(){
                this.value = proc($(this).removeText(this.value));
            });
        }
        else
        {
            return proc(_v);
        }
    };
     
    // 위 두개의 합성.
    // 콤마 불필요시 numberFormat 부분을 주석처리.
    $.fn.onlyNumber = function (p) {
        $(this).each(function(i) {
            //$(this).attr({'style':'text-align:right'});
        	$(this).css("text-align", "right");
             
            this.value = $(this).removeText(this.value);
            this.value = $(this).numberFormat(this.value);
             
            $(this).bind('keypress keyup',function(e){
                this.value = $(this).removeText(this.value);
                this.value = $(this).numberFormat(this.value);
            });
        });
    };
     
})(jQuery);

