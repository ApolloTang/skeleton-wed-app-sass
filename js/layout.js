(function($){
	var ui = {};
	window.ui = ui; 
	ui.getViewPortDim =  function(){ return { 
				w: $(window).width(),
				h: $(window).height() };
		};
	ui.getDocDim =  function(){ return { 
				w: $(document).width(),
				h: $(document).height() };
		};
})(jQuery);
	
(function($){
		
	var mouseIsPressed = false;
	var mousePressedTimeOut;
    var workspace_content_minimum_w = 1000;	
	
	/* layout monitoring */ 
	adjustLayout( ui.getViewPortDim() );
	$(window).resize( function() { adjustLayout( ui.getViewPortDim() ); });

	function adjustLayout( viewPortDim ) {
		
		/* vertical adjustment */
		var skeletalHeader_h = $("#skeletal_head").height();
		var skeletalFooter_h = $("#skeletal_foot").height();
		var tabContainer_h   = $("#tab_container").height();
 		var skeletalBody_h = viewPortDim.h - skeletalHeader_h - skeletalFooter_h;
		var workspace_h = skeletalBody_h - tabContainer_h;	
		$("#skeletal_body").css({'height': skeletalBody_h });
	    $("#workspace").css({'height': workspace_h });
	    
	    /* horizontal adjustment */
	    $("#skeletal_main").css({'width': viewPortDim.w});
		var skeletal_main_inner_w = viewPortDim.w - $("#grip_main").width();
		var workspace_content_w = skeletal_main_inner_w - $("#workspace_tool_bar").width();
	    $("#workspace_content").css({'width': workspace_content_w});	
	    $("#skeletal_main_inner").css({'width': skeletal_main_inner_w});
		var workspace_content_inner_w = ( workspace_content_w > workspace_content_minimum_w) 
							? workspace_content_w
							: workspace_content_minimum_w;
		$("#workspace_content_inner").css({'width': workspace_content_inner_w});					
	} /* end-func djustLayout */

	
	/* monitor key press */
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
	

    $("#button_to_slide_main").click(function(){
    	var skeletal_main_left = $("#skeletal_main").offset().left; 	
		appConsole(skeletal_main_left);   	

		if (skeletal_main_left > 0) $("#skeletal_main").animate({'left': 0});
		if (skeletal_main_left == 0) $("#skeletal_main").animate({'left': 500});
    });
	
	/* mornitor mouse pressed	 */
	$("#grip_main").mousedown(function(e) {
		e.preventDefault();
	    mouseIsPressed = true;
	    mousePressedTimeOut = setTimeout( GripMainIsOn, 50);
	    document.body.style.cursor = 'col-resize';
	})
	$(document).bind('mouseup', function() {
	    mouseIsPressed = false;
		GripMainIsOff();
	    clearTimeout(mousePressedTimeOut);
	    document.body.style.cursor = '';
	});
		
	function GripMainIsOn() {
		$(document).mousemove( function(e){
			if(mouseIsPressed) {
				appConsole('GripMainIsON called');
				// read mouse coordinate
        		$("#console1").text(e.pageX + ', ' + e.pageY );
        				$("#skeletal_main").css({'left': e.pageX});
        	}
        } );		
		$("#grip_main").addClass('gripOn');
	};
	function GripMainIsOff() {
		appConsole('GripMainIsOff called');
		$("#grip_main").removeClass('gripOn');
	};


		


	
	function appConsole( message ) {
		$("#console1").prepend( message + '</br>');
	}
    appConsole( 1 );
    appConsole( 2 );
    
    ui.showJobTree = function() {
    	$("#skeletal_main").css({'left': 200});
    }
    	
})(jQuery);
	