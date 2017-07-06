$(function() {
    	$("#slides").slidesjs({
      		width: 800,
      		height: 1000,
      		navigation: {effect: "fade"},
           	pagination: {effect: "fade"},
          	effect: {fade: {speed: 800}},      		
      		play: {
      			effect: "fade",      			
            	active: true,
             	auto: true,
                interval: 4000,
                swap: true,
                pauseOnHover: true,
            	restartDelay: 2500
         	}      		
    	});
  	});
	
	if (460 > $("#slides").innerWidth()) {
		$(".splash").css("height" , $(".mobile").innerHeight());
	} else {
		$(".splash").css("height" , $(".mobile2").innerHeight());
	}
	
	$(document).ready(function() {
		$(".splash").css("height" , "auto");
		
		$(window).resize(function() {
			if (460 > $("#slides").innerWidth()) {
				$(".slidesjs-container").css("height" , $(".mobile").innerHeight());
			}
       	});
		
       	$(window).resize();  
	});