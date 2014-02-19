[1mdiff --git a/css/main.css b/css/main.css[m
[1mindex 819f27d..532bdb4 100644[m
[1m--- a/css/main.css[m
[1m+++ b/css/main.css[m
[36m@@ -19,11 +19,13 @@[m
  * HTML5 display definitions[m
  * ========================================================================== */[m
 /* Corrects block display not defined in IE6/7/8/9 & FF3 */[m
[32m+[m[32m/* line 11, ../sass/partials/lib/reset/_normalize.sass */[m
 article, aside, details, figcaption, figure, footer, header, hgroup, nav, section {[m
   display: block;[m
 }[m
 [m
 /* Corrects inline-block display not defined in IE6/7/8/9 & FF3 */[m
[32m+[m[32m/* line 17, ../sass/partials/lib/reset/_normalize.sass */[m
 audio, canvas, video {[m
   display: inline-block;[m
   *display: inline;[m
[36m@@ -31,6 +33,7 @@[m [maudio, canvas, video {[m
 }[m
 [m
 /* Prevents modern browsers from displaying 'audio' without controls */[m
[32m+[m[32m/* line 25, ../sass/partials/lib/reset/_normalize.sass */[m
 audio:not([controls]), [hidden] {[m
   display: none;[m
 }[m
[36m@@ -45,6 +48,7 @@[m [maudio:not([controls]), [hidden] {[m
  * 2. Keeps page centred in all browsers regardless of content height[m
  * 3. Prevents iOS text size adjust after orientation change, without disabling user zoom[m
  *    www.456bereastreet.com/archive/201012/controlling_text_size_in_safari_for_ios_without_disabling_user_zoom/ */[m
[32m+[m[32m/* line 43, ../sass/partials/lib/reset/_normalize.sass */[m
 html {[m
   font-size: 100%;[m
   /* 1 */[m
[36m@@ -57,12 +61,14 @@[m [mhtml {[m
 }[m
 [m
 /* Addresses margins handled incorrectly in IE6/7 */[m
[32m+[m[32m/* line 56, ../sass/partials/lib/reset/_normalize.sass */[m
 body {[m
   margin: 0;[m
   font-family: sans-serif;[m
 }[m
 [m
 /* Addresses font-family inconsistency between 'textarea' and other form elements. */[m
[32m+[m[32m/* line 63, ../sass/partials/lib/reset/_normalize.sass */[m
 button, input, select, textarea {[m
   font-family: sans-serif;[m
 }[m
[36m@@ -70,15 +76,19 @@[m [mbutton, input, select, textarea {[m
 /* =============================================================================[m
  * Links[m
  * ========================================================================== */[m
[32m+[m[32m/* line 70, ../sass/partials/lib/reset/_normalize.sass */[m
 a {[m
   color: #0000ee;[m
 }[m
[32m+[m[32m/* line 72, ../sass/partials/lib/reset/_normalize.sass */[m
 a:visited {[m
   color: #551a8b;[m
 }[m
[32m+[m[32m/* line 74, ../sass/partials/lib/reset/_normalize.sass */[m
 a:focus {[m
   outline: thin dotted;[m
 }[m
[32m+[m[32m/* line 76, ../sass/partials/lib/reset/_normalize.sass */[m
 a:hover, a:active {[m
   outline: 0;[m
 }[m
[36m@@ -90,25 +100,30 @@[m [ma:hover, a:active {[m
  * Typography[m
  * ========================================================================== */[m
 /* Addresses styling not present in IE7/8/9, S5, Chrome */[m
[32m+[m[32m/* line 93, ../sass/partials/lib/reset/_normalize.sass */[m
 abbr[title] {[m
   border-bottom: 1px dotted;[m
 }[m
 [m
 /* Addresses style set to 'bolder' in FF3/4, S4/5, Chrome */[m
[32m+[m[32m/* line 99, ../sass/partials/lib/reset/_normalize.sass */[m
 b, strong {[m
   font-weight: bold;[m
 }[m
 [m
[32m+[m[32m/* line 102, ../sass/partials/lib/reset/_normalize.sass */[m
 blockquote {[m
   margin: 1em 40px;[m
 }[m
 [m
 /* Addresses styling not present in S5, Chrome */[m
[32m+[m[32m/* line 108, ../sass/partials/lib/reset/_normalize.sass */[m
 dfn {[m
   font-style: italic;[m
 }[m
 [m
 /* Addresses styling not present in IE6/7/8/9 */[m
[32m+[m[32m/* line 114, ../sass/partials/lib/reset/_normalize.sass */[m
 mark {[m
   background: yellow;[m
   color: black;[m
[36m@@ -116,6 +131,7 @@[m [mmark {[m
 [m
 /* Corrects font family set oddly in IE6, S4/5, Chrome[m
  * en.wikipedia.org/wiki/User:Davidgothberg/Test59 */[m
[32m+[m[32m/* line 122, ../sass/partials/lib/reset/_normalize.sass */[m
 pre, code, kbd, samp {[m
   font-family: monospace, serif;[m
   _font-family: "courier new", monospace;[m
[36m@@ -123,6 +139,7 @@[m [mpre, code, kbd, samp {[m
 }[m
 [m
 /* Improves readability of pre-formatted text in all browsers */[m
[32m+[m[32m/* line 130, ../sass/partials/lib/reset/_normalize.sass */[m
 pre {[m
   white-space: pre;[m
   white-space: pre-wrap;[m
[36m@@ -132,21 +149,25 @@[m [mpre {[m
 /* 1. Addresses CSS quotes not supported in IE6/7[m
  * 2. Addresses quote property not supported in S4 */[m
 /* 1 */[m
[32m+[m[32m/* line 141, ../sass/partials/lib/reset/_normalize.sass */[m
 q {[m
   quotes: none;[m
 }[m
[32m+[m[32m/* line 143, ../sass/partials/lib/reset/_normalize.sass */[m
 q:before, q:after {[m
   content: "";[m
   content: none;[m
 }[m
 [m
 /* 2 */[m
[32m+[m[32m/* line 149, ../sass/partials/lib/reset/_normalize.sass */[m
 small {[m
   font-size: 75%;[m
 }[m
 [m
 /* Prevents sub and sup affecting line-height in all browsers[m
  * gist.github.com/413930 */[m
[32m+[m[32m/* line 156, ../sass/partials/lib/reset/_normalize.sass */[m
 sub {[m
   font-size: 75%;[m
   line-height: 0;[m
[36m@@ -154,6 +175,7 @@[m [msub {[m
   vertical-align: baseline;[m
 }[m
 [m
[32m+[m[32m/* line 162, ../sass/partials/lib/reset/_normalize.sass */[m
 sup {[m
   font-size: 75%;[m
   line-height: 0;[m
[36m@@ -162,6 +184,7 @@[m [msup {[m
   top: -0.5em;[m
 }[m
 [m
[32m+[m[32m/* line 169, ../sass/partials/lib/reset/_normalize.sass */[m
 sub {[m
   bottom: -0.25em;[m
 }[m
[36m@@ -169,15 +192,18 @@[m [msub {[m
 /* =============================================================================[m
  * Lists[m
  * ========================================================================== */[m
[32m+[m[32m/* line 176, ../sass/partials/lib/reset/_normalize.sass */[m
 ul, ol {[m
   margin: 1em 0;[m
   padding: 0 0 0 40px;[m
 }[m
 [m
[32m+[m[32m/* line 180, ../sass/partials/lib/reset/_normalize.sass */[m
 dd {[m
   margin: 0 0 0 40px;[m
 }[m
 [m
[32m+[m[32m/* line 184, ../sass/partials/lib/reset/_normalize.sass */[m
 nav ul, nav ol {[m
   list-style: none;[m
   list-style-image: none;[m
[36m@@ -189,6 +215,7 @@[m [mnav ul, nav ol {[m
 /* 1. Removes border when inside 'a' element in IE6/7/8/9[m
  * 2. Improves image quality when scaled in IE7[m
  *    code.flickr.com/blog/2008/11/12/on-ui-quality-the-little-things-client-side-image-resizing/ */[m
[32m+[m[32m/* line 197, ../sass/partials/lib/reset/_normalize.sass */[m
 img {[m
   border: 0;[m
   /* 1 */[m
[36m@@ -197,6 +224,7 @@[m [mimg {[m
 }[m
 [m
 /* Corrects overflow displayed oddly in IE9 */[m
[32m+[m[32m/* line 206, ../sass/partials/lib/reset/_normalize.sass */[m
 svg:not(:root) {[m
   overflow: hidden;[m
 }[m
[36m@@ -205,6 +233,7 @@[m [msvg:not(:root) {[m
  * Figures[m
  * ========================================================================== */[m
 /* Addresses margin not present in IE6/7/8/9, S5, O11 */[m
[32m+[m[32m/* line 216, ../sass/partials/lib/reset/_normalize.sass */[m
 figure, form {[m
   margin: 0;[m
 }[m
[36m@@ -214,6 +243,7 @@[m [mfigure, form {[m
  * ========================================================================== */[m
 /* Corrects margin displayed oddly in IE6/7 */[m
 /* Define consistent margin and padding */[m
[32m+[m[32m/* line 229, ../sass/partials/lib/reset/_normalize.sass */[m
 fieldset {[m
   margin: 0 2px;[m
   padding: 0.35em 0.625em 0.75em;[m
[36m@@ -221,6 +251,7 @@[m [mfieldset {[m
 [m
 /* 1. Corrects color not being inherited in IE6/7/8/9[m
  * 2. Corrects alignment displayed oddly in IE6/7 */[m
[32m+[m[32m/* line 237, ../sass/partials/lib/reset/_normalize.sass */[m
 legend {[m
   border: 0;[m
   /* 1 */[m
[36m@@ -231,6 +262,7 @@[m [mlegend {[m
 /* 1. Corrects font size not being inherited in all browsers[m
  * 2. Addresses margins set differently in IE6/7, F3/4, S5, Chrome[m
  * 3. Improves appearance and consistency in all browsers */[m
[32m+[m[32m/* line 248, ../sass/partials/lib/reset/_normalize.sass */[m
 button, input, select, textarea {[m
   font-size: 100%;[m
   /* 1 */[m
[36m@@ -244,6 +276,7 @@[m [mbutton, input, select, textarea {[m
 [m
 /* 1. Addresses FF3/4 setting line-height using !important in the UA stylesheet[m
  * 2. Corrects inner spacing displayed oddly in IE6/7 */[m
[32m+[m[32m/* line 262, ../sass/partials/lib/reset/_normalize.sass */[m
 button, input {[m
   line-height: normal;[m
   /* 1 */[m
[36m@@ -253,12 +286,14 @@[m [mbutton, input {[m
 [m
 /* Corrects overlap and whitespace issue for buttons and inputs in IE6/7[m
  * Known issue: reintroduces inner spacing */[m
[32m+[m[32m/* line 273, ../sass/partials/lib/reset/_normalize.sass */[m
 table button, table input {[m
   *overflow: auto;[m
 }[m
 [m
 /* 1. Improves usability and consistency of cursor style between image-type 'input' and others[m
  * 2. Corrects inability to style clickable 'input' types in iOS */[m
[32m+[m[32m/* line 280, ../sass/partials/lib/reset/_normalize.sass */[m
 button, html input[type="button"] {[m
   cursor: pointer;[m
   /* 1 */[m
[36m@@ -266,18 +301,21 @@[m [mbutton, html input[type="button"] {[m
   /* 2 */[m
 }[m
 [m
[32m+[m[32m/* line 287, ../sass/partials/lib/reset/_normalize.sass */[m
 input[type="reset"], input[type="submit"] {[m
   cursor: pointer;[m
   /* 1 */[m
   -webkit-appearance: button;[m
   /* 2 */[m
 }[m
[32m+[m[32m/* line 292, ../sass/partials/lib/reset/_normalize.sass */[m
 input[type="checkbox"], input[type="radio"] {[m
   box-sizing: border-box;[m
   /* 1 */[m
   padding: 0;[m
   /* 2 */[m
 }[m
[32m+[m[32m/* line 297, ../sass/partials/lib/reset/_normalize.sass */[m
 input[type="search"] {[m
   -webkit-appearance: textfield;[m
   /* 1 */[m
[36m@@ -286,6 +324,7 @@[m [minput[type="search"] {[m
   /* 2 */[m
   box-sizing: content-box;[m
 }[m
[32m+[m[32m/* line 304, ../sass/partials/lib/reset/_normalize.sass */[m
 input[type="search"]::-webkit-search-decoration {[m
   -webkit-appearance: none;[m
 }[m
[36m@@ -297,6 +336,7 @@[m [minput[type="search"]::-webkit-search-decoration {[m
 /* Corrects inner padding displayed oddly in S5, Chrome on OSX */[m
 /* Corrects inner padding and border displayed oddly in FF3/4[m
  * www.sitepen.com/blog/2008/05/14/the-devils-in-the-details-fixing-dojos-toolbar-buttons/ */[m
[32m+[m[32m/* line 322, ../sass/partials/lib/reset/_normalize.sass */[m
 button::-moz-focus-inner, input::-moz-focus-inner {[m
   border: 0;[m
   padding: 0;[m
[36m@@ -304,6 +344,7 @@[m [mbutton::-moz-focus-inner, input::-moz-focus-inner {[m
 [m
 /* 1. Removes default vertical scrollbar in IE6/7/8/9[m
  * 2. Improves readability and alignment in all browsers */[m
[32m+[m[32m/* line 330, ../sass/partials/lib/reset/_normalize.sass */[m
 textarea {[m
   overflow: auto;[m
   /* 1 */[m
[36m@@ -315,6 +356,7 @@[m [mtextarea {[m
  * Tables[m
  * ========================================================================== */[m
 /* Remove most spacing between table cells */[m
[32m+[m[32m/* line 343, ../sass/partials/lib/reset/_normalize.sass */[m
 table {[m
   border-collapse: collapse;[m
   border-spacing: 0;[m
[36m@@ -322,11 +364,13 @@[m [mtable {[m
 [m
 /* - - - - - - - - - - - - - - - -  Additional Reset  */[m
 /* ----- Remove Chrome's Orange Outline */[m
[32m+[m[32m/* line 31, ../sass/theme/_theme-01-00-init.sass */[m
 *:focus {[m
   outline: none;[m
 }[m
 [m
 /* ----- initialize form button */[m
[32m+[m[32m/* line 35, ../sass/theme/_theme-01-00-init.sass */[m
 button, input[type="reset"], input[type="submit"], input[type="button"] {[m
   border: 1px solid #cccccc;[m
   background: #ececec;[m
[36m@@ -336,201 +380,259 @@[m [mbutton, input[type="reset"], input[type="submit"], input[type="button"] {[m
 }[m
 [m
 /* ----- control Firefox's and WebKit's own resizable behavior */[m
[32m+[m[32m/* line 43, ../sass/theme/_theme-01-00-init.sass */[m
 textarea {[m
   resize: none;[m
 }[m
 [m
[32m+[m[32m/* line 45, ../sass/theme/_theme-01-00-init.sass */[m
 .resizable > textarea {[m
   resize: both;[m
 }[m
 [m
 /* ----- remove link outline  */[m
[32m+[m[32m/* line 30, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.image-link {[m
   text-decoration: none;[m
   border-bottom-width: 1px;[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 34, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.image-link:visited {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 36, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.image-link:focus {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 38, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.image-link:hover {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 40, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.image-link:active {[m
   border-bottom-style: none;[m
 }[m
 [m
 /* ----- give it a dimension, don't trust auto mode */[m
[32m+[m[32m/* line 53, ../sass/theme/_theme-01-00-init.sass */[m
 a.image-link {[m
   height: inherent;[m
 }[m
 [m
 /* ----- misc */[m
[32m+[m[32m/* line 57, ../sass/theme/_theme-01-00-init.sass */[m
 .hidden {[m
   display: none;[m
 }[m
 [m
 /* ----- global link reset */[m
[32m+[m[32m/* line 30, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a {[m
   text-decoration: none;[m
   border-bottom-width: 1px;[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 34, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:visited {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 36, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:focus {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 38, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:hover {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 40, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:active {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 56, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a {[m
   border-bottom-color: black;[m
 }[m
[32m+[m[32m/* line 58, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:visited {[m
   border-bottom-color: black;[m
 }[m
[32m+[m[32m/* line 60, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:focus {[m
   border-bottom-color: black;[m
 }[m
[32m+[m[32m/* line 62, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:hover {[m
   border-bottom-color: black;[m
 }[m
[32m+[m[32m/* line 64, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:active {[m
   border-bottom-color: black;[m
 }[m
[32m+[m[32m/* line 104, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 106, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:visited {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 108, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:focus {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 110, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:hover {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 112, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:active {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 121, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:hover {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 128, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a {[m
   color: black;[m
 }[m
[32m+[m[32m/* line 130, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:visited {[m
   color: black;[m
 }[m
[32m+[m[32m/* line 132, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:focus {[m
   color: black;[m
 }[m
[32m+[m[32m/* line 134, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:hover {[m
   color: black;[m
 }[m
[32m+[m[32m/* line 136, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a:active {[m
   color: black;[m
 }[m
 [m
 /* ----- hyper link  */[m
[32m+[m[32m/* line 30, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link {[m
   text-decoration: none;[m
   border-bottom-width: 1px;[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 34, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:visited {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 36, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:focus {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 38, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:hover {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 40, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:active {[m
   border-bottom-style: none;[m
 }[m
[32m+[m[32m/* line 43, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:visited {[m
   border-bottom-style: dotted;[m
 }[m
[32m+[m[32m/* line 46, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:focus {[m
   border-bottom-style: dotted;[m
 }[m
[32m+[m[32m/* line 49, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:hover {[m
   border-bottom-style: dotted;[m
 }[m
[32m+[m[32m/* line 52, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:active {[m
   border-bottom-style: dotted;[m
 }[m
[32m+[m[32m/* line 56, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link {[m
   border-bottom-color: blue;[m
 }[m
[32m+[m[32m/* line 58, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:visited {[m
   border-bottom-color: blue;[m
 }[m
[32m+[m[32m/* line 60, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:focus {[m
   border-bottom-color: blue;[m
 }[m
[32m+[m[32m/* line 62, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:hover {[m
   border-bottom-color: blue;[m
 }[m
[32m+[m[32m/* line 64, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:active {[m
   border-bottom-color: blue;[m
 }[m
[32m+[m[32m/* line 104, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 106, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:visited {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 108, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:focus {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 110, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:hover {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 112, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:active {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 121, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:hover {[m
   font-weight: normal;[m
 }[m
[32m+[m[32m/* line 128, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link {[m
   color: blue;[m
 }[m
[32m+[m[32m/* line 130, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:visited {[m
   color: blue;[m
 }[m
[32m+[m[32m/* line 132, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:focus {[m
   color: blue;[m
 }[m
[32m+[m[32m/* line 134, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:hover {[m
   color: blue;[m
 }[m
[32m+[m[32m/* line 136, ../sass/theme/theme_lib/maxins/_theme_maxins_links.sass */[m
 a.link:active {[m
   color: blue;[m
 }[m
 [m
 /* ----- list reset */[m
[32m+[m[32m/* line 75, ../sass/theme/_theme-01-00-init.sass */[m
 ol, ul {[m
   list-style-type: none;[m
 }[m
 [m
 /* - - - - helper class */[m
[32m+[m[32m/* line 88, ../sass/theme/_theme-01-00-init.sass */[m
 .v-space-25 {[m
   float: left;[m
   width: 100%;[m
   height: 25px;[m
 }[m
 [m
[32m+[m[32m/* line 90, ../sass/theme/_theme-01-00-init.sass */[m
 .v-space-100 {[m
   float: left;[m
   width: 100%;[m
[36m@@ -538,30 +640,37 @@[m [mol, ul {[m
 }[m
 [m
 /* -------------------------------------------------  FILE: _theme-02-00-dev.sass */[m
[32m+[m[32m/* line 17, ../sass/theme/_theme-02-00-dev.sass */[m
 #skeletal_head {[m
   background-color: #fcf8e3;[m
 }[m
 [m
[32m+[m[32m/* line 20, ../sass/theme/_theme-02-00-dev.sass */[m
 #skeletal_body {[m
   background-color: #dff0d8;[m
 }[m
 [m
[32m+[m[32m/* line 23, ../sass/theme/_theme-02-00-dev.sass */[m
 #skeletal_sidebar {[m
   background-color: #d9edf7;[m
 }[m
 [m
[32m+[m[32m/* line 26, ../sass/theme/_theme-02-00-dev.sass */[m
 #skeletal_main {[m
   background-color: #f2dede;[m
 }[m
 [m
[32m+[m[32m/* line 29, ../sass/theme/_theme-02-00-dev.sass */[m
 #skeletal_foot {[m
   background-color: #f2debe;[m
 }[m
 [m
[32m+[m[32m/* line 32, ../sass/theme/_theme-02-00-dev.sass */[m
 #tab_container {[m
   background-color: #f2fede;[m
 }[m
 [m
[32m+[m[32m/* line 35, ../sass/theme/_theme-02-00-dev.sass */[m
 #content {[m
   background-color: #e2dede;[m
 }[m
[36m@@ -570,62 +679,82 @@[m [mol, ul {[m
 /* ------ @font-face */[m
 /* ------ font stacks definition */[m
 /* ------ typography style */[m
[32m+[m[32m/* line 43, ../sass/theme/_theme-03-00-typography.sass */[m
 body {[m
   font-family: arial, sans-serif;[m
   font-size: 14px;[m
   color: black;[m
 }[m
 [m
[32m+[m[32m/* line 48, ../sass/theme/_theme-03-00-typography.sass */[m
 nav a {[m
   font-family: arial, sans-serif;[m
   font-size: 40px;[m
 }[m
 [m
 /* -------------------------------------------------  FILE: _theme-04-00-layout.sass */[m
[32m+[m[32m/* line 9, ../sass/theme/_theme-04-00-layout.sass */[m
 #skeletal_head {[m
   height: 100px;[m
 }[m
 [m
[32m+[m[32m/* line 12, ../sass/theme/_theme-04-00-layout.sass */[m
[32m+[m[32m#skeletal_body {[m
[32m+[m[32m  position: relative;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* line 16, ../sass/theme/_theme-04-00-layout.sass */[m
[32m+[m[32m#skeletal_foot {[m
[32m+[m[32m  height: 50px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* line 22, ../sass/theme/_theme-04-00-layout.sass */[m
 #skeletal_sidebar {[m
   float: left;[m
[31m-  width: 300px;[m
[32m+[m[32m  width: 500px;[m
   height: 100%;[m
   overflow-y: scroll;[m
[32m+[m[32m  z-index: 50;[m
 }[m
 [m
[32m+[m[32m/* line 29, ../sass/theme/_theme-04-00-layout.sass */[m
 #skeletal_main {[m
[31m-  margin-left: 300px;[m
   overflow: hidden;[m
[32m+[m[32m  z-index: 60;[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  width: 1000px;[m
[32m+[m[32m  left: 100px;[m
 }[m
 [m
[31m-#skeletal_foot {[m
[31m-  height: 50px;[m
[31m-}[m
[31m-[m
[32m+[m[32m/* line 43, ../sass/theme/_theme-04-00-layout.sass */[m
 #tab_container {[m
   float: left;[m
   width: 100%;[m
 }[m
 [m
[32m+[m[32m/* line 47, ../sass/theme/_theme-04-00-layout.sass */[m
 #workspace {[m
   float: left;[m
   width: 100%;[m
   overflow: hidden;[m
 }[m
 [m
[32m+[m[32m/* line 53, ../sass/theme/_theme-04-00-layout.sass */[m
 #tool_bar {[m
   float: left;[m
[31m-  width: 150px;[m
[32m+[m[32m  width: 80px;[m
   height: 100%;[m
   overflow: hidden;[m
 }[m
 [m
[32m+[m[32m/* line 59, ../sass/theme/_theme-04-00-layout.sass */[m
 #content {[m
   margin-left: 100px;[m
   height: 100%;[m
   overflow-y: scroll;[m
 }[m
 [m
[32m+[m[32m/* line 64, ../sass/theme/_theme-04-00-layout.sass */[m
 #tab_container > ul > li {[m
   float: left;[m
 }[m
[1mdiff --git a/index.html b/index.html[m
[1mindex 55c91b0..da4f88f 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -37,14 +37,13 @@[m
 					<li>tab 3</li>[m
 				</ul>	[m
 			</div>[m
[31m-			[m
 			<div id="workspace">[m
 				<div id="tool_bar">[m
[31m-				<ul>[m
[31m-					<li>TOOL 1</li>[m
[31m-					<li>TOOL 2</li>[m
[31m-					<li>TOOL 3</li>[m
[31m-				</ul>	[m
[32m+[m					[32m<ul>[m
[32m+[m						[32m<li>TOOL 1</li>[m
[32m+[m						[32m<li>TOOL 2</li>[m
[32m+[m						[32m<li>TOOL 3</li>[m
[32m+[m					[32m</ul>[m[41m	[m
 				</div>[m
 				<div id="content">[m
 							MAIN CONTAINER container In risus placerat? Scelerisque nisi rhoncus tortor placerat ac facilisis tortor! Elementum proin sed, proin tincidunt, hac amet? Rhoncus cum nascetur augue! Nascetur, elementum nascetur? Odio et! Ac, porta cursus sagittis magnis lorem augue a risus turpis est, nascetur, massa? Vel natoque tincidunt turpis urna ac, in rhoncus, pid nunc diam. Penatibus, lorem adipiscing, tempor dolor eu non, sed tristique! Tortor ridiculus diam, sed! Rhoncus turpis? Porta integer? Adipiscing? Aliquet? Rhoncus, proin platea porta massa, ridiculus cras, in, urna mus, adipiscing tincidunt ut massa, aenean turpis. Porta urna nascetur, pulvinar? Pulvinar porttitor ridiculus. Turpis habitasse nisi magna porta ultrices purus. Placerat ut sagittis amet cum tristique velit integer quis vel sed magna, tempor ridiculus augue platea in duis. Urna pid. context vselector dsfad selector dsfad asdf ad asdf as asdfa dsf  asdf ad asdf as asdfa dsf selector dsfad asdf ad asdf as asdfa dsf[m
[1mdiff --git a/js/layout.js b/js/layout.js[m
[1mindex 452928b..f4ccd3b 100644[m
[1m--- a/js/layout.js[m
[1m+++ b/js/layout.js[m
[36m@@ -18,11 +18,11 @@[m
 		var skeletalHeader_h = $("#skeletal_head").height();[m
 		var skeletalFooter_h = $("#skeletal_foot").height();[m
 		var tabContainer_h = $("#tab_container").height();[m
[31m-		var skeletalBody_h = vph - skeletalHeader_h - skeletalFooter_h;[m
[31m-		var workspace_h = skeletalBody_h - tabContainer_h[m
[32m+[m		[32mvar new_skeletalBody_h = vph - skeletalHeader_h - skeletalFooter_h;[m
[32m+[m		[32mvar new_workspace_h = skeletalBody_h - tabContainer_h[m
 		console.log( " foot:", skeletalFooter_h, " header:", skeletalHeader_h, " vph:", vph, " body:",  skeletalBody_h);[m
[31m-		$("#skeletal_body").css({'height': skeletalBody_h });[m
[31m-	    $("#workspace").css({'height': workspace_h });[m
[32m+[m		[32m$("#skeletal_body").css({'height': new_skeletalBody_h });[m
[32m+[m	[32m    $("#workspace").css({'height': new_workspace_h });[m
 	}[m
 	adjustHeight(vph);[m
 	$(window).resize( function() { adjustHeight( ui.getViewPortDim().h ); });[m
[1mdiff --git a/sass/theme/_theme-04-00-layout.sass b/sass/theme/_theme-04-00-layout.sass[m
[1mindex b407972..d569cee 100644[m
[1m--- a/sass/theme/_theme-04-00-layout.sass[m
[1m+++ b/sass/theme/_theme-04-00-layout.sass[m
[36m@@ -2,26 +2,43 @@[m
 [m
 $height_skeletal_head: 100px[m
 $height_skeletal_footer: 50px[m
[31m-$width_sidebar: 300px[m
[31m-$width_toolbar: 150px[m
[32m+[m[32m// $width_sidebar: 300px[m
[32m+[m[32m$width_sidebar: 500px[m
[32m+[m[32m$width_toolbar: 80px[m
 [m
 #skeletal_head[m
   height: $height_skeletal_head[m
 [m
 #skeletal_body[m
[32m+[m[32m  position: relative[m
[32m+[m[32m  // height calculated by script[m
[32m+[m[41m  [m
[32m+[m[32m#skeletal_foot[m
[32m+[m[32m  height: $height_skeletal_footer[m
[32m+[m
[32m+[m
[32m+[m
 [m
 #skeletal_sidebar[m
   float: left[m
   width: $width_sidebar[m
   height: 100%[m
[31m-  overflow-y: scroll [m
[32m+[m[32m  overflow-y: scroll[m
[32m+[m[32m  z-index: 50[m[41m [m
   [m
 #skeletal_main[m
[31m-  margin-left: $width_sidebar[m
[32m+[m[32m  //margin-left: $width_sidebar[m
   overflow: hidden[m
[32m+[m[32m  z-index: 60[m
[32m+[m[32m  position: absolute[m
[32m+[m[32m  width: 1000px[m
[32m+[m[32m  left: 100px[m
[32m+[m[41m  [m
     [m
[31m-#skeletal_foot[m
[31m-  height: $height_skeletal_footer[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
 [m
 #tab_container[m
   float: left[m
warning: LF will be replaced by CRLF in index.html.
The file will have its original line endings in your working directory.
