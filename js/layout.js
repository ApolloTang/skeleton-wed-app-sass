(function($){
	var ui = {};
	window.ui = ui; 
	ui.getViewPortDim =  function(){ return { 
				w: $(window).width(),
				h: $(window).height() }
		};
	ui.getDocDim =  function(){ return { 
				w: $(document).width(),
				h: $(document).height() }
		};
})(jQuery);
	
(function($){
	// Equalized all container height in application body
	var vph = ui.getViewPortDim().h;
	var vpw = ui.getViewPortDim().w;
	

	
	
	
	
	function adjustLayout( viewPortDim ) {
			var skeletalHeader_h = $("#skeletal_head").height();
	var skeletalFooter_h = $("#skeletal_foot").height();
	var tabContainer_h = $("#tab_container").height();
	
	var skeletalSideBar_w = $("#skeletal_sidebar").width();
	var skeletal_main_w = $("#skeletal_main").width();
	var skeletal_main_left = $("#skeletal_main").offset().left;
 
		var new_skeletalBody_h = viewPortDim.h - skeletalHeader_h - skeletalFooter_h;
		var new_workspace_h = new_skeletalBody_h - tabContainer_h
		$("#skeletal_body").css({'height': new_skeletalBody_h });
	    $("#workspace").css({'height': new_workspace_h });
	    
	    var new_main_w = viewPortDim.w-skeletal_main_left;

	    if ( new_main_w > 800) {
	    	$("#skeletal_main").css({'width': new_main_w});
	    } else {
	    	$("#skeletal_main").css({'width': 800});
	    }
	    
	    
	    
	    

	}
	adjustLayout( ui.getViewPortDim() );
	$(window).resize( function() { adjustLayout( ui.getViewPortDim() ); });
	
	
	
$("body").keydown(function(e) {
	var skeletal_main_left = $("#skeletal_main").offset().left;	

  if(e.keyCode == 37) { // left
  	skeletal_main_left = skeletal_main_left -10;    
	$("#skeletal_main").css({'left': skeletal_main_left });
	adjustLayout( ui.getViewPortDim() );
  }
  else if(e.keyCode == 39) { // right
  	skeletal_main_left = skeletal_main_left + 10; 
	$("#skeletal_main").css({'left': skeletal_main_left});
	adjustLayout( ui.getViewPortDim() );
  }
});



})(jQuery);
	