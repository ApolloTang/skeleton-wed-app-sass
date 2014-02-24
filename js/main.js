requirejs.config({
    paths: {
        jquery: 'libs/jquery-1.9.0'
        , underscore: 'libs/underscore-1.4.4'
    }
    , urlArgs: "bust=" + (new Date()).getTime()
    , shim: {
        'jquery': {
            exports: '$'
        }
        , 'underscore': {
            exports: '_',
            deps: ['jquery']
        }
    }
});



require(
    ['jquery', 'underscore'],
    function ($, _) {
    	
        window.LD = { 
        	 status: 'healthy'
        	 , state: 'home'
        	 , message : '' 
        };
        
        // resolve the asp.net/underscore conflict for < % tags
        _.templateSettings = {
            interpolate: /\{\{(.+?)\}\}/gim,     // print value: {{ value_name }}
            evaluate:    /\{%([\s\S]+?)%\}/gim,  // excute code: {% code_to_execute %}
            escape:      /\{%-([\s\S]+?)%\}/gim  // excape HTML: {%- <script> %} prints &lt;script&gt;
        };
  
        function delayExecute() { 
            
            require( ['modules/ui', 'modules/load_jobs'], function (ui, jobs) {
                $(".job-item").click(function(){ LD.ui.console('job item clicked')
                
                /*  
                  1. create instant of job-workflow 
                  2. insert tab.
                  3. load documnet table.
                  4. load tool.
                  
                */
                });
                    
            });

            // require( ['modules/document_list'],  function (document_list) {                 
            // });
        }
            
        $(document).ready( function ($, _) {       	
            require( ['modules/ui'],  function (ui) {LD.ui = ui; });
            setTimeout( delayExecute, 2000 );
        });
    }
);