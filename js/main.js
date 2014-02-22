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
    
        // resolve the asp.net/underscore conflict for < % tags
        _.templateSettings = {
            interpolate: /\{\{(.+?)\}\}/gim,  // print value: {{ value_name }}
            evaluate: /\{%([\s\S]+?)%\}/gim,  // excute code: {% code_to_execute %}
            escape: /\{%-([\s\S]+?)%\}/gim    // excape HTML: {%- <script> %} prints &lt;script&gt;
        };
  
        //
        function delayExecute($, _, ui) {  debugger; }
            
        $(document).ready( function ($, _) {
             debugger;
            require( ['modules/ui'],  function (ui) {
                        debugger;
            });
            // setTimeout( delayExecute, 2000 );

        });


    }
);