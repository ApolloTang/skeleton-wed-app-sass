define(['jquery'], 
function ($) {
	var ui = {};   // exposed
	var _ui = {};  // private
	
	var mouseIsPressed = false;
	var mousePressedTimeOut;
    var workspace_content_minimum_w = 1000;	

	ui.getViewPortDim =  function(){ return { 
				w: $(window).width(),
				h: $(window).height() };
		};
	ui.getDocDim =  function(){ return { 
				w: $(document).width(),
				h: $(document).height() };
		};
    
    _ui.get_main_left = function() {
    	return $("#skeletal_main").offset().left;
    };

	_ui.upDateLayout = function( viewPortDim ) {

		// vertical adjustment 
		var skeletalHeader_h = $("#skeletal_head").height();
		var skeletalFooter_h = $("#skeletal_foot").height();
		var tabContainer_h   = $("#tab_container").height();
 		var skeletalBody_h = viewPortDim.h - skeletalHeader_h - skeletalFooter_h;
		var workspace_h = skeletalBody_h - tabContainer_h;	
		$("#skeletal_body").css({'height': skeletalBody_h });
	    $("#workspace").css({'height': workspace_h });
	    
	    // horizontal adjustment 
	    $("#skeletal_main").css({'width': viewPortDim.w});
		var skeletal_main_inner_w = viewPortDim.w - $("#grip_main").width();
		var workspace_content_w = skeletal_main_inner_w - $("#workspace_tool_bar").width();
	    $("#workspace_content").css({'width': workspace_content_w});	
	    $("#skeletal_main_inner").css({'width': skeletal_main_inner_w});
		var workspace_content_inner_w = ( workspace_content_w > workspace_content_minimum_w) 
							? workspace_content_w
							: workspace_content_minimum_w;
		$("#workspace_content_inner").css({'width': workspace_content_inner_w});					
	}; // end-func djustLayout

	_ui.upDateMainX  = function(x) {
		var icon = '';
		if ( x >= 0 && x <= 500 ) {
			$("#skeletal_main").css({'left': x });
			$("#skeletal_sidebar").width(x);
			_ui.upDateLayout( ui.getViewPortDim() );
			icon = ( x < 10 ) ? '&gt;' : '&lt;';
			$("#button_to_slide_main").html(icon);
		} else {
			return false;
		}
		return true;
	};
	
	_ui.animateMainX  = function(x) {
		var icon = '';
		if ( x >= 0 && x <= 500 ) {
			$("#skeletal_main").animate({'left': x });
			$("#skeletal_sidebar").animate({'width': x});
			_ui.upDateLayout( ui.getViewPortDim() );
			icon = ( x < 10 ) ? '&gt;' : '&lt;';
			$("#button_to_slide_main").html(icon);
		} else {
			return false;
		}
		return true;
		

	};
	
	/* monitor key press */
	$("body").bind('keydown', function(e) {
		var main_left = _ui.get_main_left();

		switch (e.keyCode.toString()) {
			case "37": // left arrow
				main_left = main_left -10;    
				_ui.upDateMainX(main_left);
				break;
			case "39":  // right arrow
				main_left = main_left +10;    
				_ui.upDateMainX(main_left);
				break;  
			default:
			    /* every thing else pressed */
		}  
	});

    /* press button to open/close main */
    $("#button_to_slide_main").bind('click', function(){
    	var main_left = _ui.get_main_left();
    	var defaultExpandWidth = 400;
	    if (main_left > 10) _ui.animateMainX(0);
		if (main_left < 10) _ui.animateMainX(defaultExpandWidth);
	});
    	
	/* mornitor mouse pressed */
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
	});
		
	function GripMainIsOn() {
		$(document).mousemove( function(e){
			if(mouseIsPressed) {
				appConsole('GripMainIsON called');
        		$("#console1").text(e.pageX + ', ' + e.pageY );
        		_ui.upDateMainX(e.pageX);
        	}
        } );		
		$("#grip_main").addClass('gripOn');
	};
	function GripMainIsOff() {
		appConsole('GripMainIsOff called');
		$("#grip_main").removeClass('gripOn');
	};

    /* develpment console */
	function appConsole( message ) {
		$("#console1").prepend( message + '</br>');
	}
    
    /* layout monitoring */ 
	_ui.upDateLayout( ui.getViewPortDim() );
	$(window).resize( function() { _ui.upDateLayout( ui.getViewPortDim() ); });
    
    /* expose previledge method */
    ui.console = appConsole;        
    ui.upDateMainX = _ui.upDateMainX;
    ui.animateMainX = _ui.animateMainX;
    
return ui;
});