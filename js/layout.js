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
	function adjustHeight( vph ) {
		var skeletalHeader_h = $("#skeletal_head").height();
		var skeletalFooter_h = $("#skeletal_foot").height();
		var tabContainer_h = $("#tab_container").height();
		var skeletalBody_h = vph - skeletalHeader_h - skeletalFooter_h;
		var workspace_h = skeletalBody_h - tabContainer_h
		console.log( " foot:", skeletalFooter_h, " header:", skeletalHeader_h, " vph:", vph, " body:",  skeletalBody_h);
		$("#skeletal_body").css({'height': skeletalBody_h });
	    $("#workspace").css({'height': workspace_h });
	}
	adjustHeight(vph);
	$(window).resize( function() { adjustHeight( ui.getViewPortDim().h ); });
})(jQuery);
	