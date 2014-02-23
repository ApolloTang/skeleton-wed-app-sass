define(['jquery'], 
function ($) {
	var ui = {};
	var _ui = {};
	
	var mouseIsPressed = false;
	var mousePressedTimeOut;
    var workspace_content_minimum_w = 1000;	
    var A1 = function() { console.log('say some thing');};
    AAA = function() { console.log('say some thing');}; 

	ui.getViewPortDim =  function(){ return { 
				w: $(window).width(),
				h: $(window).height() };
		};
	ui.getDocDim =  function(){ return { 
				w: $(document).width(),
				h: $(document).height() };
		};
    // _ui.get_main_left = function() {
    	// return $("#skeletal_main").offset().left;
    // };
    
    _ui.get_main_left = function() {
    	return $("#skeletal_main").offset().left;
    };
    
    function A2() { 
    	var a = 'a';
    	console.log('say some thing');
    }

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
	$("body").bind('keydown', function(e) {
		var main_left = _ui.get_main_left();
		//debugger;
		switch (e.keyCode.toString()) {
			case "37": // left arrow
				main_left = main_left -10;    
				$("#skeletal_main").css({'left': main_left });
				$("#skeletal_sidebar").width(main_left);
				adjustLayout( ui.getViewPortDim() );
				break;
			case "39":  // right arrow
				main_left = main_left +10;    
				$("#skeletal_main").css({'left': main_left });
				$("#skeletal_sidebar").width(main_left);
				adjustLayout( ui.getViewPortDim() );
				break;  
			default:
			    /* every thing else press */
		}  
	});
	

    $("#button_to_slide_main").click(function(){
    	console.log('slide button clicked');
    	var skeletal_main_left = $("#skeletal_main").offset().left; 	
		if (skeletal_main_left > 0) {
			console.log('should close now');
			$("#skeletal_main").animate({'left': 0});
			$("#skeletal_sidebar").animate({'width': 0});
		
			$("#button_to_slide_main").html('&gt;');
		}
		if (skeletal_main_left == 0) {
			$("#skeletal_main").animate({'left': 500});
			$("#button_to_slide_main").html('&lt;');
			$("#skeletal_sidebar").animate({'width': 500});
		}
    });
	
	/* mornitor mouse pressed	 */
	$("#grip_main").mousedown(function(e) {
		e.preventDefault();
	    mouseIsPressed = true;
	    mousePressedTimeOut = setTimeout( GripMainIsOn, 50);
	    document.body.style.cursor = 'col-resize';

		$(document).one('mouseup', function() {
		    mouseIsPressed = false;
			GripMainIsOff();
		    clearTimeout(mousePressedTimeOut);
		    document.body.style.cursor = '';
		});
	})

		
	function GripMainIsOn() {
		$(document).mousemove( function(e){
			if(mouseIsPressed) {
				appConsole('GripMainIsON called');
				// read mouse coordinate
        		$("#console1").text(e.pageX + ', ' + e.pageY );
        		$("#skeletal_main").css({'left': e.pageX});
        		$("#skeletal_sidebar").width(e.pageX);
		
        	}
        } );		
		$("#grip_main").addClass('gripOn');
	};
	function GripMainIsOff() {
		appConsole('GripMainIsOff called');
		$("#grip_main").removeClass('gripOn');
		var skeletal_main_left = $("#skeletal_main").offset().left; 	
		if (skeletal_main_left > 0) {
 			$("#button_to_slide_main").html('&lt;');
		}
	};

	function appConsole( message ) {
		$("#console1").prepend( message + '</br>');
	}
	   
    

    /* layout monitoring */ 
	adjustLayout( ui.getViewPortDim() );
	$(window).resize( function() { adjustLayout( ui.getViewPortDim() ); });
    
    ui.console = appConsole;
    ui.showJob = function() {
    	var skeletal_main_left = $("#skeletal_main").offset().left; 	
		if (skeletal_main_left == 0) {
			$("#skeletal_main").animate({'left': 500});
			$("#skeletal_sidebar").animate({'width': 500});
			
			}
    }
    ui.hideJob = function() {
    	var skeletal_main_left = $("#skeletal_main").offset().left; 	
		if (skeletal_main_left > 0) {
		$("#skeletal_main").animate({'left': 0});
		$("#skeletal_sidebar").animate({'width': 0});
		
			$("#button_to_slide_main").html('&gt;');
		}
    }
         
        
    
return ui;
});