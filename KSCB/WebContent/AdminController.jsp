<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Website Adminstration System</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">-->

<link href="css/admin-nav-tabbed.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/modal-full-screen.css" rel="stylesheet" type="text/css" />
<link href="css/global.css" rel="stylesheet" type="text/css" />
<link href="css/blueimp.css" rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/jquery.fileupload.css" rel="stylesheet">
<link href="css/jquery.fileupload-ui.css" rel="stylesheet">
<link rel="stylesheet" href="css/jqx.base.css" type="text/css" />
<link rel="stylesheet" href="css/jqx.light.css" type="text/css" />
<link rel="stylesheet" href="css/pgwslideshow.min.css" type="text/css" />
<link rel="stylesheet" href="css/pgwslideshow_light.min.css" type="text/css" />

<style type="text/css">

/* enable absolute positioning */
.inner-addon { 
    position: relative; 
}

/* style icon */
.inner-addon .glyphicon {
  position: absolute;
  padding: 10px;
  pointer-events: none;
}

/* align icon */
.left-addon .glyphicon  { left:  0px;}
.right-addon .glyphicon { right: 0px;}

/* add padding  */
.left-addon input  { padding-left:  30px; }
.right-addon input { padding-right: 30px; }

.checkmark-circle {
  width: 40px;
  height: 40px;
  position: relative;
  display: inline-block;
  vertical-align: top;
}
.checkmark-circle .background {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background: #ffffff;
  position: absolute;
}
.checkmark-circle .checkmark {
  border-radius: 5px;
}
.checkmark-circle .checkmark.draw:after {
  -webkit-animation-delay: 100ms;
  -moz-animation-delay: 100ms;
  animation-delay: 100ms;
  -webkit-animation-duration: 1s;
  -moz-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-timing-function: ease;
  -moz-animation-timing-function: ease;
  animation-timing-function: ease;
  -webkit-animation-name: checkmark;
  -moz-animation-name: checkmark;
  animation-name: checkmark;
  -webkit-transform: scaleX(-1) rotate(135deg);
  -moz-transform: scaleX(-1) rotate(135deg);
  -ms-transform: scaleX(-1) rotate(135deg);
  -o-transform: scaleX(-1) rotate(135deg);
  transform: scaleX(-1) rotate(135deg);
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
}
.checkmark-circle .checkmark:after {
  opacity: 1;
  height: 15px;
  width: 14.5px;
  -webkit-transform-origin: left top;
  -moz-transform-origin: left top;
  -ms-transform-origin: left top;
  -o-transform-origin: left top;
  transform-origin: left top;
  border-right: 15px solid #2EB150;
  border-top: 15px solid #2EB150;
  border-radius: 2.5px !important;
  content: '';
  left: 5px;
  top: 25px;
  position: absolute;
}

@-webkit-keyframes checkmark {
  0% {
    height: 0;
    width: 0;
    opacity: 1;
  }
  20% {
    height: 0;
    width: 20.5px;
    opacity: 1;
  }
  40% {
    height: 30px;
    width: 20.5px;
    opacity: 1;
  }
  100% {
    height: 30px;
    width: 20.5px;
    opacity: 1;
  }
}
@-moz-keyframes checkmark {
  0% {
    height: 0;
    width: 0;
    opacity: 1;
  }
  20% {
    height: 0;
    width: 20.5px;
    opacity: 1;
  }
  40% {
    height: 30px;
    width: 20.5px;
    opacity: 1;
  }
  100% {
    height: 30px;
    width: 20.5px;
    opacity: 1;
  }
}
@keyframes checkmark {
  0% {
    height: 0;
    width: 0;
    opacity: 1;
  }
  20% {
    height: 0;
    width: 20.5px;
    opacity: 1;
  }
  40% {
    height: 30px;
    width: 20.5px;
    opacity: 1;
  }
  100% {
    height: 30px;
    width: 20.5px;
    opacity: 1;
  }
}


@import('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css') 

.funkyradio div {
  clear: both;
  overflow: hidden;
}

.funkyradio label {
  width: 100%;
  border-radius: 3px;
  border: 1px solid #D1D3D4;
  font-weight: normal;
}

.funkyradio input[type="radio"]:empty,
.funkyradio input[type="checkbox"]:empty {
  display: none;
}

.funkyradio input[type="radio"]:empty ~ label,
.funkyradio input[type="checkbox"]:empty ~ label {
  position: relative;
  line-height: 2.5em;
  text-indent: 3.25em;
  margin-top: 2em;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}

.funkyradio input[type="radio"]:empty ~ label:before,
.funkyradio input[type="checkbox"]:empty ~ label:before {
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #D1D3D4;
  border-radius: 3px 0 0 3px;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label {
  color: #888;
}

.funkyradio input[type="radio"]:hover:not(:checked) ~ label:before,
.funkyradio input[type="checkbox"]:hover:not(:checked) ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #C2C2C2;
}

.funkyradio input[type="radio"]:checked ~ label,
.funkyradio input[type="checkbox"]:checked ~ label {
  color: #777;
}

.funkyradio input[type="radio"]:checked ~ label:before,
.funkyradio input[type="checkbox"]:checked ~ label:before {
  content: '\2714';
  text-indent: .9em;
  color: #333;
  background-color: #ccc;
}

.funkyradio input[type="radio"]:focus ~ label:before,
.funkyradio input[type="checkbox"]:focus ~ label:before {
  box-shadow: 0 0 0 3px #999;
}

.funkyradio-default input[type="radio"]:checked ~ label:before,
.funkyradio-default input[type="checkbox"]:checked ~ label:before {
  color: #333;
  background-color: #ccc;
}

.funkyradio-primary input[type="radio"]:checked ~ label:before,
.funkyradio-primary input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #337ab7;
}

.funkyradio-success input[type="radio"]:checked ~ label:before,
.funkyradio-success input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5cb85c;
}

.funkyradio-danger input[type="radio"]:checked ~ label:before,
.funkyradio-danger input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #d9534f;
}

.funkyradio-warning input[type="radio"]:checked ~ label:before,
.funkyradio-warning input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #f0ad4e;
}

.funkyradio-info input[type="radio"]:checked ~ label:before,
.funkyradio-info input[type="checkbox"]:checked ~ label:before {
  color: #fff;
  background-color: #5bc0de;
}

/* SCSS STYLES */
/*
.funkyradio {

    div {
        clear: both;
        overflow: hidden;
    }

    label {
        width: 100%;
        border-radius: 3px;
        border: 1px solid #D1D3D4;
        font-weight: normal;
    }

    input[type="radio"],
    input[type="checkbox"] {

        &:empty {
            display: none;

            ~ label {
                position: relative;
                line-height: 2.5em;
                text-indent: 3.25em;
                margin-top: 2em;
                cursor: pointer;
                user-select: none;

                &:before {
                    position: absolute;
                    display: block;
                    top: 0;
                    bottom: 0;
                    left: 0;
                    content: '';
                    width: 2.5em;
                    background: #D1D3D4;
                    border-radius: 3px 0 0 3px;
                }
            }
        }

        &:hover:not(:checked) ~ label {
            color: #888;

            &:before {
                content: '\2714';
                text-indent: .9em;
                color: #C2C2C2;
            }
        }

        &:checked ~ label {
            color: #777;

            &:before {
                content: '\2714';
                text-indent: .9em;
                color: #333;
                background-color: #ccc;
            }
        }

        &:focus ~ label:before {
            box-shadow: 0 0 0 3px #999;
        }
    }

    &-default {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #333;
                background-color: #ccc;
            }
        }
    }

    &-primary {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #337ab7;
            }
        }
    }

    &-success {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #5cb85c;
            }
        }
    }

    &-danger {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #d9534f;
            }
        }
    }

    &-warning {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #f0ad4e;
            }
        }
    }

    &-info {
        input[type="radio"],
        input[type="checkbox"] {
            &:checked ~ label:before {
                color: #fff;
                background-color: #5bc0de;
            }
        }
    }
}
*/

    </style>
    
<style>
.ui-widget-overlay {
   background: #AAA url(images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x;
   opacity: .30;
   filter: Alpha(Opacity=30);
}
fieldset.scheduler-border {
    border: 1px groove #ddd !important;
    padding: 0 1.4em 1.4em 1.4em !important;
    margin: 0 0 1.5em 0 !important;
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
}
	
legend.scheduler-border {
    width:inherit; /* Or auto */
    padding:0 10px; /* To give a bit of padding on the left and right */
    border-bottom:none;
}
textarea{
    height: 200px;
    width: 100%;
   -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
    -moz-box-sizing: border-box;    /* Firefox, other Gecko */
    box-sizing: border-box;         /* Opera/IE 8+ */
}
#hideCreateTemplateConfirm:hover{
	cursor:default;
}

body{margin-top:50px;}
.glyphicon { margin-right:10px; }
.fa {margin-right:10px;}
#panelBody { padding:0px; }
#panelBody table tr td { padding-left: 15px }
#panelBody .table {margin-bottom: 0px; }

.jqx-menu-item-top, .jqx-menu-item
{
    font-size:12px;
}

</style>
<!-- <script src="bootstrap/js/jquery.js"></script>-->
<script type="text/javascript" language="javascript" src="http://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/log4javascript.js"></script>
<script src="js/core-min.js"></script>
<script src="js/enc-base64-min.js"></script>
<script src="js/spin.min.js"></script>
<script type="text/javascript"  src="js/pgwslideshow.min.js"></script>

<script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="js/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>

<!-- blueimp Gallery script -->
<script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="js/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="js/jquery.fileupload-ui.js"></script>
<!-- The main application script -->
<script src="js/main.js"></script>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-confirmation.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css"/>
<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
<script src="bootstrap/js/bootstrap-treeview.js"></script>

<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<!--<script src="js/jquery.ui.widget.js"></script>-->

<script type="text/javascript" src="js/jqxcore.js"></script>
<script type="text/javascript" src="js/jqxmenu.js"></script>
<script type="text/javascript" src="js/jqxresponsivepanel.js"></script>


<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script type="text/javascript">

(function(a){a.fn.pgwSlideshow=function(q){var i={mainClassName:"pgwSlideshow",transitionEffect:"sliding",displayList:true,displayControls:true,touchControls:true,autoSlide:false,beforeSlide:false,afterSlide:false,maxHeight:null,adaptiveDuration:200,transitionDuration:500,intervalDuration:3000};if(this.length==0){return this}else{if(this.length>1){this.each(function(){a(this).pgwSlideshow(q)});return this}}var j=this;j.plugin=this;j.config={};j.data=[];j.currentSlide=0;j.slideCount=0;j.resizeEvent=null;j.intervalEvent=null;j.touchFirstPosition=null;j.touchListLastPosition=false;j.window=a(window);var p=function(){j.config=a.extend({},i,q);g();if(j.config.displayList){b()}j.window.resize(function(){clearTimeout(j.resizeEvent);j.resizeEvent=setTimeout(function(){e();var r=j.plugin.find(".ps-current > ul > li.elt_"+j.currentSlide+" img").height();h(r);if(j.config.displayList){b();n()}},100)});if(j.config.autoSlide){k()}return true};var h=function(r,s){if(j.config.maxHeight){if(r+j.plugin.find(".ps-list").height()>j.config.maxHeight){r=j.config.maxHeight-j.plugin.find(".ps-list").height()}}if(typeof j.plugin.find(".ps-current").animate=="function"){j.plugin.find(".ps-current").stop().animate({height:r},j.config.adaptiveDuration,function(){if(j.config.maxHeight){j.plugin.find(".ps-current > ul > li img").css("max-height",r+"px")}})}else{j.plugin.find(".ps-current").css("height",r);if(j.config.maxHeight){j.plugin.find(".ps-current > ul > li img").css("max-height",r+"px")}}return true};var c=function(){var r=0;j.plugin.show();j.plugin.find(".ps-list > ul > li").show().each(function(){r+=a(this).width()});j.plugin.find(".ps-list > ul").width(r);return true};var e=function(){if(j.plugin.width()<=480){j.plugin.addClass("narrow").removeClass("wide")}else{j.plugin.addClass("wide").removeClass("narrow")}return true};var g=function(){j.plugin.removeClass("pgwSlideshow").removeClass(j.config.mainClassName);j.plugin.wrap('<div class="ps-list"></div>');j.plugin=j.plugin.parent();j.plugin.wrap('<div class="'+j.config.mainClassName+'"></div>');j.plugin=j.plugin.parent();j.plugin.prepend('<div class="ps-current"><ul></ul><span class="ps-caption"></span></div>');j.slideCount=j.plugin.find(".ps-list > ul > li").length;if(j.slideCount==0){throw new Error("pgwSlideshow - No slider item has been found");return false}if(j.slideCount>1){if(j.config.displayControls){j.plugin.find(".ps-current").prepend('<span class="ps-prev"><span class="ps-prevIcon"></span></span>');j.plugin.find(".ps-current").append('<span class="ps-next"><span class="ps-nextIcon"></span></span>');j.plugin.find(".ps-current .ps-prev").click(function(){j.previousSlide()});j.plugin.find(".ps-current .ps-next").click(function(){j.nextSlide()})}if(j.config.touchControls){j.plugin.find(".ps-current").on("touchstart",function(s){try{if(s.originalEvent.touches[0].clientX&&j.touchFirstPosition==null){j.touchFirstPosition=s.originalEvent.touches[0].clientX}}catch(s){j.touchFirstPosition=null}});j.plugin.find(".ps-current").on("touchmove",function(s){try{if(s.originalEvent.touches[0].clientX&&j.touchFirstPosition!=null){if(s.originalEvent.touches[0].clientX>(j.touchFirstPosition+50)){j.touchFirstPosition=null;j.previousSlide()}else{if(s.originalEvent.touches[0].clientX<(j.touchFirstPosition-50)){j.touchFirstPosition=null;j.nextSlide()}}}}catch(s){j.touchFirstPosition=null}});j.plugin.find(".ps-current").on("touchend",function(s){j.touchFirstPosition=null})}}var r=1;j.plugin.find(".ps-list > ul > li").each(function(){var t=d(a(this));t.id=r;j.data.push(t);a(this).addClass("elt_"+t.id);a(this).wrapInner('<span class="ps-item'+(r==1?" ps-selected":"")+'"></span>');var s=a('<li class="elt_'+r+'"></li>');if(t.image){s.html('<img src="'+t.image+'" alt="'+(t.title?t.title:"")+'">')}else{if(t.thumbnail){s.html('<img src="'+t.thumbnail+'" alt="'+(t.title?t.title:"")+'">')}}if(t.link){s.html('<a href="'+t.link+'"'+(t.linkTarget?' target="'+t.linkTarget+'"':"")+">"+s.html()+"</a>")}j.plugin.find(".ps-current > ul").append(s);a(this).css("cursor","pointer").click(function(u){u.preventDefault();l(t.id)});r++});if(j.config.displayList){c();j.plugin.find(".ps-list").prepend('<span class="ps-prev"><span class="ps-prevIcon"></span></span>');j.plugin.find(".ps-list").append('<span class="ps-next"><span class="ps-nextIcon"></span></span>');j.plugin.find(".ps-list").show()}else{j.plugin.find(".ps-list").hide()}if(j.config.autoSlide){j.plugin.on("mouseenter",function(){clearInterval(j.intervalEvent);j.intervalEvent=null}).on("mouseleave",function(){k()})}j.plugin.find(".ps-current > ul > li").hide();l(1);j.plugin.find(".ps-current > ul > li.elt_1 img").on("load",function(){e();var s=j.plugin.find(".ps-current > ul > li.elt_1 img").height();h(s)});e();j.plugin.show();return true};var d=function(x){var v={};var t=x.find("a").attr("href");if((typeof t!="undefined")&&(t!="")){v.link=t;var u=x.find("a").attr("target");if((typeof u!="undefined")&&(u!="")){v.linkTarget=u}}var s=x.find("img").attr("src");if((typeof s!="undefined")&&(s!="")){v.thumbnail=s}var y=x.find("img").attr("data-large-src");if((typeof y!="undefined")&&(y!="")){v.image=y}var r=x.find("img").attr("alt");if((typeof r!="undefined")&&(r!="")){v.title=r}var w=x.find("img").attr("data-description");if((typeof w!="undefined")&&(w!="")){v.description=w}return v};var m=function(r){var t="";if(r.title){t+="<b>"+r.title+"</b>"}if(r.description){if(t!=""){t+="<br>"}t+=r.description}if(t!=""){if(r.link){t='<a href="'+r.link+'"'+(r.linkTarget?' target="'+r.linkTarget+'"':"")+">"+t+"</a>"}if(typeof j.plugin.find(".ps-caption").fadeIn=="function"){j.plugin.find(".ps-caption").html(t);j.plugin.find(".ps-caption").fadeIn(j.config.transitionDuration/2)}else{j.plugin.find(".ps-caption").html(t);j.plugin.find(".ps-caption").show()}}j.plugin.find(".ps-list > ul > li .ps-item").removeClass("ps-selected");j.plugin.find(".ps-list > ul > li.elt_"+r.id+" .ps-item").addClass("ps-selected");if(j.config.displayList){b();n()}if(j.config.displayControls){if(typeof j.plugin.find(".ps-current > .ps-prev").fadeIn=="function"){j.plugin.find(".ps-current > .ps-prev, .ps-current > .ps-next").fadeIn(j.config.transitionDuration/2)}else{j.plugin.find(".ps-current > .ps-prev, .ps-current > .ps-next").show()}}if(typeof j.config.afterSlide=="function"){j.config.afterSlide(r.id)}var s=j.plugin.find(".ps-current .elt_"+r.id+" img").height();h(s,true);return true};var f=function(u){var t=j.plugin.find(".ps-current > ul");t.find("li").not(".elt_"+j.currentSlide).not(".elt_"+u.id).each(function(){if(typeof a(this).stop=="function"){a(this).stop()}a(this).css("position","").css("z-index",1).hide()});if(j.currentSlide>0){var r=t.find(".elt_"+j.currentSlide);if(typeof r.animate!="function"){r.animate=function(v,w,x){r.css(v);if(x){x()}}}if(typeof r.stop=="function"){r.stop()}r.css("position","absolute").animate({opacity:0},j.config.transitionDuration,function(){r.css("position","").css("z-index",1).hide()})}j.currentSlide=u.id;var s=t.find(".elt_"+u.id);if(typeof s.animate!="function"){s.animate=function(v,w,x){s.css(v);if(x){x()}}}if(typeof s.stop=="function"){s.stop()}s.css("position","absolute").show().animate({opacity:1},j.config.transitionDuration,function(){s.css("position","").css("z-index",2).css("display","block");m(u)});return true};var o=function(v,y){var u=j.plugin.find(".ps-current > ul");if(typeof y=="undefined"){y="left"}if(j.currentSlide==0){u.find(".elt_1").css({position:"",left:"",opacity:1,"z-index":2}).show();j.plugin.find(".ps-list > li.elt_1").css("opacity","1");m(v)}else{if(j.transitionInProgress){return false}j.transitionInProgress=true;var x=u.width();if(y=="left"){var r=-x;var w=x}else{var r=x;var w=-x}var s=u.find(".elt_"+j.currentSlide);if(typeof s.animate!="function"){s.animate=function(z,A,B){s.css(z);if(B){B()}}}s.css("position","absolute").animate({left:r},j.config.transitionDuration,function(){s.css("position","").css("z-index",1).css("left","").css("opacity",0).hide()});var t=u.find(".elt_"+v.id);if(typeof t.animate!="function"){t.animate=function(z,A,B){t.css(z);if(B){B()}}}t.css("position","absolute").css("left",w).css("opacity",1).show().animate({left:0},j.config.transitionDuration,function(){t.css("position","").css("left","").css("z-index",2).show();j.transitionInProgress=false;m(v)})}j.currentSlide=v.id;return true};var l=function(r,t,u){if(r==j.currentSlide){return false}var s=j.data[r-1];if(typeof s=="undefined"){throw new Error("pgwSlideshow - The element "+r+" is undefined");return false}if(typeof u=="undefined"){u="left"}if(typeof j.config.beforeSlide=="function"){j.config.beforeSlide(r)}if(typeof j.plugin.find(".ps-caption").fadeOut=="function"){j.plugin.find(".ps-caption, .ps-prev, .ps-next").fadeOut(j.config.transitionDuration/2)}else{j.plugin.find(".ps-caption, .ps-prev, .ps-next").hide()}if(j.config.transitionEffect=="sliding"){o(s,u)}else{f(s)}if(typeof t!="undefined"&&j.config.autoSlide){k()}return true};var k=function(){clearInterval(j.intervalEvent);if(j.slideCount>1&&j.config.autoSlide){j.intervalEvent=setInterval(function(){if(j.currentSlide+1<=j.slideCount){var r=j.currentSlide+1}else{var r=1}l(r)},j.config.intervalDuration)}return true};var b=function(){if(!j.config.displayList){return false}c();var w=j.plugin.find(".ps-list");var u=w.width();var r=j.plugin.find(".ps-list > ul");var v=r.width();if(v>u){r.css("margin","0 45px");var t=parseInt(r.css("margin-left"));var s=parseInt(r.css("margin-right"));u-=(t+s);w.find(".ps-prev").show().unbind("click").click(function(){var y=parseInt(r.css("left"));var x=y+u;if(y==0){x=-(v-u)}else{if(x>0){x=0}}if(typeof r.animate=="function"){r.animate({left:x},j.config.transitionDuration)}else{r.css("left",x)}});w.find(".ps-next").show().unbind("click").click(function(){var y=parseInt(r.css("left"));var x=y-u;var z=-(v-u);if(y==z){x=0}else{if(x<z){x=z}}if(typeof r.animate=="function"){r.animate({left:x},j.config.transitionDuration)}else{r.css("left",x)}});if(j.config.touchControls){j.plugin.find(".ps-list > ul").on("touchmove",function(C){try{if(C.originalEvent.touches[0].clientX){var G=(j.touchListLastPosition==false?0:j.touchListLastPosition);nbPixels=(j.touchListLastPosition==false?1:Math.abs(G-C.originalEvent.touches[0].clientX));j.touchListLastPosition=C.originalEvent.touches[0].clientX;var x="";if(G>C.originalEvent.touches[0].clientX){x="left"}else{if(G<C.originalEvent.touches[0].clientX){x="right"}}}var F=parseInt(r.css("left"));if(x=="left"){var E=w.width();var D=r.width();var z=parseInt(r.css("margin-left"));var B=parseInt(r.css("margin-right"));E-=(z+B);var A=-(D-E);var y=F-nbPixels;if(y>A){r.css("left",y)}}else{if(x=="right"){var y=F+nbPixels;if(y<0){r.css("left",y)}else{r.css("left",0)}}}}catch(C){j.touchListLastPosition=false}});j.plugin.find(".ps-list > ul").on("touchend",function(x){j.touchListLastPosition=false})}}else{var t=parseInt((u-v)/2);r.css("left",0).css("margin-left",t);w.find(".ps-prev").hide();w.find(".ps-next").hide();j.plugin.find(".ps-list > ul").unbind("touchstart touchmove touchend")}return true};var n=function(){var A=j.plugin.find(".ps-list").width();var y=j.plugin.find(".ps-list > ul");var z=y.width();var t=parseInt(y.css("margin-left"));var x=parseInt(y.css("margin-right"));A-=(t+x);var w=Math.abs(parseInt(y.css("left")));var r=w+A;var u=j.plugin.find(".ps-list .ps-selected").position().left;var s=u+j.plugin.find(".ps-list .ps-selected").width();if((u<w)||(s>r)||(z>A&&r>s)){var v=-(z-A);if(-u<v){y.css("left",v)}else{y.css("left",-u)}}return true};j.startSlide=function(){j.config.autoSlide=true;k();return true};j.stopSlide=function(){j.config.autoSlide=false;clearInterval(j.intervalEvent);return true};j.getCurrentSlide=function(){return j.currentSlide};j.getSlideCount=function(){return j.slideCount};j.displaySlide=function(r){l(r,true);return true};j.nextSlide=function(){if(j.currentSlide+1<=j.slideCount){var r=j.currentSlide+1}else{var r=1}l(r,true,"left");return true};j.previousSlide=function(){if(j.currentSlide-1>=1){var r=j.currentSlide-1}else{var r=j.slideCount}l(r,true,"right");return true};j.destroy=function(r){clearInterval(j.intervalEvent);if(typeof r!="undefined"){j.plugin.find(".ps-list > ul > li").each(function(){a(this).attr("style",null).removeClass().unbind("click");a(this).html(a(this).find("span").html())});j.plugin.find(".ps-current").remove();j.plugin.find(".ps-list").find(".ps-prev, .ps-next").remove();j.plugin.find(".ps-list > ul").addClass(j.config.mainClassName).attr("style","");j.plugin.find(".ps-list > ul").unwrap().unwrap();j.hide()}else{j.parent().parent().remove()}j.plugin=null;j.data=[];j.config={};j.currentSlide=0;j.slideCount=0;j.resizeEvent=null;j.intervalEvent=null;j.touchFirstPosition=null;j.window=null;return true};j.reload=function(r){j.destroy(true);j=this;j.plugin=this;j.window=a(window);j.plugin.show();j.config=a.extend({},i,r);g();j.window.resize(function(){clearTimeout(j.resizeEvent);j.resizeEvent=setTimeout(function(){e();var s=j.plugin.find(".ps-current > ul > li.elt_"+j.currentSlide+" img").css("max-height","").height();h(s);if(j.config.displayList){b();n()}},100)});if(j.config.autoSlide){k()}return true};p();return this}})(window.Zepto||window.jQuery);

</script>

<script language="javascript">

	
	$(document).ready(function(event) {
		
		var documentConfirmations = "<button style='background-color:#ffffff;border-color:#ffffff;' id='simDocsActions' class='btn-primary-outline' data-placement='left' data-toggle='confirmation-custom' data-title='Document Actions ?'></button>";
		documentConfirmations += '<button class="btn btn-default" data-on-confirm="doDeleteDocument" data-on-cancel="resetDocConf" data-placement="left" data-toggle="confirmation-singleton" data-original-title="" title="" id="confirmDocumentDelete" style="background-color:#ffffff;border-color:#ffffff;"></button>';	
		
		$("#john").html(documentConfirmations);
		
		$('#documentsTBL').on( 'click', 'button', function (event) {
			//alert();
	        documentsTableRowData = documentsTable.row($(this).parents('tr')).data();
	        toggleConfirmation(event);
	        //alert( data[0] +"'s salary is: "String+ data[ 5 ] );

	    } );
		
		$('[data-toggle=confirmation-singleton]').confirmation({ singleton: true });
		
		$('[data-toggle=confirmation]').confirmation({
		    rootSelector: '[data-toggle=confirmation]',
		    container: 'body'
		});
		
		$('[data-toggle=confirmation-custom]').confirmation({
		   buttons: [
		     {
		       label: 'View',
		       class: 'btn btn-xs btn-success',
		       icon: 'glyphicon glyphicon-ok',
		       onClick: function(){
		    	   actionViewDocument();
		       }
		     },
		     {
		       label: 'Download',
		       class: 'btn btn-xs btn-warning',
		       icon: 'glyphicon glyphicon-search',
		       onClick: function(){
		    	   actionDownloadDocument();
		       }
		       
		     },
		     {
		       label: 'Delete',
		       class: 'btn btn-xs btn-danger',
		       icon: 'glyphicon glyphicon-remove',
		       onClick: function(){
		    	   actionDeleteDocument();
		       }
		       
		     },
		     {
		       label: 'Cancel',
		       class: 'btn btn-xs btn-default',
		       icon: 'glyphicon glyphicon-time',
		       onClick: function(){
		    	   actionResetDocumentActions();
		       }
		       
		     }
		   ]
		 });
		
		$(".modal-fullscreen").on('show.bs.modal', function () {
		  	setTimeout( function() {
		    	$(".modal-backdrop").addClass("modal-backdrop-fullscreen");
		  	}, 0);
		});
		
		$(".modal-fullscreen").on('hidden.bs.modal', function () {
		  	$(".modal-backdrop").addClass("modal-backdrop-fullscreen");
		});
		loadHomePageMenus();
	});
	
	var Base64 = {
	 
		// private property
		_keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
	 
		// public method for encoding
		encode : function (input) {
			var output = "";
			var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
			var i = 0;
	 
			input = Base64._utf8_encode(input);
	 
			while (i < input.length) {
	 
				chr1 = input.charCodeAt(i++);
				chr2 = input.charCodeAt(i++);
				chr3 = input.charCodeAt(i++);
	 
				enc1 = chr1 >> 2;
				enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
				enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
				enc4 = chr3 & 63;
	 
				if (isNaN(chr2)) {
					enc3 = enc4 = 64;
				} else if (isNaN(chr3)) {
					enc4 = 64;
				}
	 
				output = output +
				this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
				this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);
	 
			}
	 
			return output;
		},
	 
		// public method for decoding
		decode : function (input) {
			var output = "";
			var chr1, chr2, chr3;
			var enc1, enc2, enc3, enc4;
			var i = 0;
	 
			input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
	 
			while (i < input.length) {
	 
				enc1 = this._keyStr.indexOf(input.charAt(i++));
				enc2 = this._keyStr.indexOf(input.charAt(i++));
				enc3 = this._keyStr.indexOf(input.charAt(i++));
				enc4 = this._keyStr.indexOf(input.charAt(i++));
	 
				chr1 = (enc1 << 2) | (enc2 >> 4);
				chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
				chr3 = ((enc3 & 3) << 6) | enc4;
	 
				output = output + String.fromCharCode(chr1);
	 
				if (enc3 != 64) {
					output = output + String.fromCharCode(chr2);
				}
				if (enc4 != 64) {
					output = output + String.fromCharCode(chr3);
				}
	 
			}
	 
			output = Base64._utf8_decode(output);
	 
			return output;
	 
		},
	 
		// private method for UTF-8 encoding
		_utf8_encode : function (string) {
			string = string.replace(/\r\n/g,"\n");
			var utftext = "";
	 
			for (var n = 0; n < string.length; n++) {
	 
				var c = string.charCodeAt(n);
	 
				if (c < 128) {
					utftext += String.fromCharCode(c);
				}
				else if((c > 127) && (c < 2048)) {
					utftext += String.fromCharCode((c >> 6) | 192);
					utftext += String.fromCharCode((c & 63) | 128);
				}
				else {
					utftext += String.fromCharCode((c >> 12) | 224);
					utftext += String.fromCharCode(((c >> 6) & 63) | 128);
					utftext += String.fromCharCode((c & 63) | 128);
				}
	 
			}
	 
			return utftext;
		},
	 
		// private method for UTF-8 decoding
		_utf8_decode : function (utftext) {
			var string = "";
			var i = 0;
			var c = c1 = c2 = 0;
	 
			while ( i < utftext.length ) {
	 
				c = utftext.charCodeAt(i);
	 
				if (c < 128) {
					string += String.fromCharCode(c);
					i++;
				}
				else if((c > 191) && (c < 224)) {
					c2 = utftext.charCodeAt(i+1);
					string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
					i += 2;
				}
				else {
					c2 = utftext.charCodeAt(i+1);
					c3 = utftext.charCodeAt(i+2);
					string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
					i += 3;
				}
	 
			}
	 
			return string;
		}
	 
	}
	
	var opts = {
			  lines: 13 // The number of lines to draw
			, length: 28 // The length of each line
			, width: 10 // The line thickness
			, radius: 35 // The radius of the inner circle
			, scale: 1 // Scales overall size of the spinner
			, corners: 1 // Corner roundness (0..1)
			, color: '#000' // #rgb or #rrggbb or array of colors
			, opacity: 0.25 // Opacity of the lines
			, rotate: 0 // The rotation offset
			, direction: 1 // 1: clockwise, -1: counterclockwise
			, speed: 2.2 // Rounds per second
			, trail: 60 // Afterglow percentage
			, fps: 20 // Frames per second when using setTimeout() as a fallback for CSS
			, zIndex: 2e9 // The z-index (defaults to 2000000000)
			, className: 'spinner' // The CSS class to assign to the spinner
			, top: '50%' // Top position relative to parent
			, left: '50%' // Left position relative to parent
			, shadow: false // Whether to render a shadow
			, hwaccel: false // Whether to use hardware acceleration
			, position: 'absolute' // Element positioning
			}
			
	
	var log = log4javascript.getLogger();
	var popUpAppender = new log4javascript.PopUpAppender();
	popUpAppender.setFocusPopUp(true);
	popUpAppender.setNewestMessageAtTop(true);
	log.addAppender(popUpAppender);
	
	function StaleMenuState(){
		this.newItems = new Array();
		this.deletedItems = new Array();
		this.getNewItems = function(){
			return this.newItems;
		}
		this.getDeletedItems = function(){
			return this.deletedItems;
		}
		this.countNew = function(){
			return this.newItems.length;
		}
		this.countDeleted = function(){
			return this.deletedItems.length;
		}
		this.addNew = function(id){
			this.newItems.push(id);
		}
		this.addDeleted = function(id){
			this.deletedItems.push(id);
		}
	}
	
	function MenuItem(){
		this.pageID;
		this.menuItemTitle;
		this.MenuItems = new Array();
		this.setPageID = function(pageID){
			this.pageID = pageID;
		}
		this.getPageID = function(){
			return this.pageID;
		}
		this.setMenuItemTitle = function(menuItemTitle){
			this.menuItemTitle = menuItemTitle;
		}
		this.getMenuItemTitle = function(){
			return this.menuItemTitle;
		}
		this.addChildMenuItem = function(menuItem){
			this.MenuItems.push(menuItem);
		}
		this.getChildMenuItems = function(){
			return this.MenuItems;
		}
	}
	
	function PageItem(){
		this.pageID;
		this.pageName;
		
		this.setPageID = function(pageID){
			this.pageID = pageID;	
		}
		this.getPageID = function(){
			return this.pageID;
		}
		this.setPageName = function(pageName){
			this.pageName=pageName;
		}
		this.getPageName = function(){
			return this.pageName;
		}
	}
	
	var MenuItems = new Array();
	//var RemovePageFromMenuList = new Array();
	var staleMenuState = new StaleMenuState();
	var Pages = new Array();
	var jsonMenu = null;
	var jsonArray = null;
	var pagesJsonArray = null;
	var treeJson = null;
	var jsonMenuSyndication = null;
	var jsonPagesSyndication = null;
	var errorMsg = '';
	var ADMIN_SERVICES_REST_PREFIX = "/KSCB-REST-MenuManager";
	
	function ImageParser(){
		this.parse = function(json){
			var jArray = null;
			$.each($.parseJSON(JSON.stringify(json)), function(key2,value2){
				if(key2=='json'){
					jArray = value2;
				}
			});
			jArray = CryptoJS.enc.Base64.parse(jArray);
			return CryptoJS.enc.Utf8.stringify(jArray);
		}
	}
	function NavParser(){
		this.parse = function(json){
			var jArray = null;
			$.each($.parseJSON(JSON.stringify(json)), function(key2,value2){
				if(key2=='json'){
					jArray = value2;
				}
			});
			jArray = CryptoJS.enc.Base64.parse(jArray);
			return CryptoJS.enc.Utf8.stringify(jArray);
		}
	}
	function LayoutParser(){
		this.parse = function(json){
			var jArray = null;
			$.each($.parseJSON(JSON.stringify(json)), function(key2,value2){
				if(key2=='json'){
					jArray = value2;
				}
			});
			jArray = CryptoJS.enc.Base64.parse(jArray);
			return CryptoJS.enc.Utf8.stringify(jArray);
		}
	}
	
	function PersistException(m){
		this.message=m;
		this.name='PersistException';
	}
	function TemplateParser(){
		this.parse = function(json){
			var jArray = null;
			$.each($.parseJSON(JSON.stringify(json)), function(key2,value2){
				if(key2=='errorMsg'){
					if(value2!='success'){
						throw new PersistException(value2);
					}
				}else if(key2=='json'){
					jArray = value2;
				}
			});
			jArray = CryptoJS.enc.Base64.parse(jArray);
			return CryptoJS.enc.Utf8.stringify(jArray);
		}
	}
	
	function ParserFactory(flag){
		this.createParser = function(){
			var parser = null;
			switch(flag){
				case 0:
					parser = new ImageParser();
					break;
				case 1:
					parser = new NavParser();
					break;
				case 2:
					parser = new LayoutParser();
					break;
				case 3:
					parser = new TemplateParser();
					break;
			}
			return parser;
		}
	}
	
	function decodeString(str){
		var decStr = CryptoJS.enc.Base64.parse(str);
		return CryptoJS.enc.Utf8.stringify(decStr);
	}
	
	//decode json menu array from base64
	function decodeJSONSyndication(result, flag){
		var factory = new ParserFactory(flag);
		var instance =  factory.createParser();
		try{
			return instance.parse(result);
		}catch(e){
			showErrorMsg(e.message);
		}
	}
	
	function decodeJSONForPreview(result){
		var previewJson = null;
		$.each($.parseJSON(JSON.stringify(result)), function(key2,value2){
			if(key2=='json'){
				previewJson = value2;
			}
		});
		previewJson = CryptoJS.enc.Base64.parse(previewJson);
		return CryptoJS.enc.Utf8.stringify(previewJson);
	}
	
	function decodeJSON(result){
		
		jsonMenu = result;
		$.each($.parseJSON(JSON.stringify(result)), function(key2,value2){
			if(key2=='json'){
				jsonArray = value2;
			}
		});
		
		jsonArray = CryptoJS.enc.Base64.parse(jsonArray);
		jsonMenuSyndication = CryptoJS.enc.Utf8.stringify(jsonArray);
		
	}
	
	function encodeString(result){
		var base64d = Base64._utf8_encode(result);
		base64d = Base64.encode(base64d);
		return base64d;
	}
	
	//encode json to base64 before sending to server
	function encodeJSON(result){
		var json = Base64._utf8_encode(JSON.stringify(result));
		json = Base64.encode(json);
		return json;
	}
	
	//decode json pages json from base64
	function decodeJSONPages(result){
		
		$.each($.parseJSON(JSON.stringify(result)), function(key2,value2){
			pagesJsonArray = value2;
		});
		var json = CryptoJS.enc.Base64.parse(pagesJsonArray);
		jsonPagesSyndication = CryptoJS.enc.Utf8.stringify(json);
	}
	
	//converts server response json structure back Menu Array 
	function jsonToMenuObject(jsonMenuSyndication){
		MenuItems = new Array();
		$.each($.parseJSON(jsonMenuSyndication), function(key,value){
			var menuItem = new MenuItem();
			$.each($.parseJSON(JSON.stringify(value)), function(key2,value2){
				if(key2=="pageID"){
					menuItem.setPageID(value2);
				}else if(key2=="menuItemTitle"){
					menuItem.setMenuItemTitle(value2);
				}else if(key2=="menuItemChildren"){
					var subMenuItem = null;
					$.each($.parseJSON(JSON.stringify(value2)), function(key3,value3){
						$.each($.parseJSON(JSON.stringify(value3)), function(key4,value4){
							if(subMenuItem==null){
								subMenuItem = new MenuItem();
							}
	    					if(key4=="pageID"){
	    						subMenuItem.setPageID(value4);
	            			}else if(key4=="menuItemTitle"){
	            				subMenuItem.setMenuItemTitle(value4);
	            			}
	    					if(subMenuItem.getPageID()!=null&&subMenuItem.getMenuItemTitle()!=null){
	    						menuItem.addChildMenuItem(subMenuItem);
	    						subMenuItem = null;
	    					}
						});
					});
				}
			});
			
			MenuItems.push(menuItem);
		});
	}
	
	//convert Array to bootstarp json format for tree menu
	function menuToBootstrapTreeJson(){
		var result = [];
		
		for(i=0;i<MenuItems.length;i++){
			var item = {};
			item ["text"] = MenuItems[i].getPageID() + ' : ' + MenuItems[i].getMenuItemTitle();
			
	        item ["href"] = '"#parent'+(i+1)+'"';
	        var subNodes = [];
	        
			if(MenuItems[i].getChildMenuItems().length>0){
				item ["tags"] = '"'+MenuItems[i].getChildMenuItems().length+'"';
				var childItems = MenuItems[i].getChildMenuItems();
				
				for(x=0;x<MenuItems[i].getChildMenuItems().length;x++){
					var subItem = {};
					subItem ["text"] = MenuItems[i].getChildMenuItems()[x].getPageID() + ' : ' + MenuItems[i].getChildMenuItems()[x].getMenuItemTitle();
					subItem ["href"] = '"#child'+(x+1)+'"';
	                subNodes.push(subItem);
				}
				item ["nodes"] = subNodes;
			}
			result.push(item);
		}
		
		return result;
	}
	
	//bootstrap re-build tree from updated json 
	function buildTreeMenu(treeJson){
		
		$('#treeview3').html('');
		$('#treeview3').treeview({
	        levels: 99,
	        data: treeJson
	    });
	}
	
	//menu progress bar builder, indicates state of local page without saving state back to server
	function buildMenuProgress(){
		var complete = 0;
		var noncomplete = (staleMenuState.countNew() + staleMenuState.countDeleted());
		for(i=0;i<MenuItems.length;i++){
			complete++;
			for(x=0;x<MenuItems[i].getChildMenuItems().length;x++){
				complete++;
			}
		}
		complete = (complete-noncomplete);
		var perc = 100;
		if(noncomplete>0){
			var t = (noncomplete/(noncomplete + complete))*100;
			perc = (100-t);
		}
		
		for(i=0;i<perc;i++){
			$("#Menu_Build_Progress").width( (i+1) + '%' );
			$('#Menu_Build_Progress').prop('aria-valuenow', (i+1));
		}
	}
	
	//determines if page is parent
	//used for button activation/deactivation purposes, called on treen menu binding
	function isPageParent(pageName){
		var id = pageName.split(":")[0].trim();
		for(i=0;i<MenuItems.length;i++){
			if(MenuItems[i].getPageID()==id){
				return true;
			}
		}
		return false;
	}

	//binds javascript event handler functionality onto bootstrap tree menu
	var selectedPageID = null;
	function bindTreeMenu(){
		$(document).on("click", ".list-group-item", function() {
			var classlist = $(this).attr('class');
			selectedPageID = $(this).text().split(":")[0].trim();
			if(classlist.indexOf('node-selected')>=0){
				$("#deleteItem").addClass('disabled');
			}else{
				$("#deleteItem").addClass('disabled');
				$('#saveItem').addClass('disabled');
				var isParent = false;
				if(classlist.indexOf('node-selected')<=0){
					isParent = isPageParent($(this).text());
				}
				var pageID = $(this).text().split(":")[0].trim();
				selectedPageID = pageID;
				if(isParent){
					$("#deleteItem").removeClass('disabled');
				}else{
					$("#deleteItem").removeClass('disabled');
				}
				$('#menuItemName').val(getMenuItemTitle(pageID));
			}
		});
		
	}
	
	//get selected menu title name
	function getMenuItemTitle(pageID){
		for(i=0;i<MenuItems.length;i++){
			if(MenuItems[i].getPageID()==pageID){
				return MenuItems[i].getMenuItemTitle();
			}
			for(j=0;j<MenuItems[i].getChildMenuItems().length;j++){
				if(MenuItems[i].getChildMenuItems()[j].getPageID()==pageID){
					return MenuItems[i].getChildMenuItems()[j].getMenuItemTitle();
				}
			}
		}
	}
	
	//update menu array menu title name
	function updateMenuArrayItemName(pageID, menuItemTxt){
		for(i=0;i<MenuItems.length;i++){
			if(MenuItems[i].getPageID()==pageID){
				MenuItems[i].setMenuItemTitle(menuItemTxt);
				return;
			}
			for(j=0;j<MenuItems[i].getChildMenuItems().length;j++){
				if(MenuItems[i].getChildMenuItems()[j].getPageID()==pageID){
					MenuItems[i].getChildMenuItems()[j].setMenuItemTitle(menuItemTxt);
					return;
				}
			}
		}
	}
	
	//update menu array id
	function updateMenuArray(oldID, newID){
		for(i=0;i<MenuItems.length;i++){
			if(MenuItems[i].getPageID()==oldID){
				MenuItems[i].setPageID(newID);
				return;
			}
			for(j=0;j<MenuItems[i].getChildMenuItems().length;j++){
				if(MenuItems[i].getChildMenuItems()[j].getPageID()==oldID){
					MenuItems[i].getChildMenuItems()[j].setPageID(newID);
					return;
				}
			}
		}
	}
	
	var selectedMenuItem = null;
	var pageMgrSelectedMenuItem = null;
	
	//update tree node
	function updateTreeItem(obj, pageID, form){
		var txt = null;
		if(form!=null){
			txt=$(form).val();
		}else{
			txt=$(obj).text().split(":")[1].trim();
		}
		var html = $(obj).html().replace($(obj).text(),"");
			html += pageID + ' : ' + txt;
		$(obj).html(html);
	}
	
	//binds event handler functionality on bootstrap pages select menu
	function bindPagesMenu(){
		$("#menuDropDown").on('click', 'li a', function(){
		  	selectedMenuItem = $(this);
		  	if(selectedMenuItem.attr('id')!=null){
		      	$(".menuDropDownButton:first-child").text(selectedMenuItem.text());
		      	$(".menuDropDownButton:first-child").val(selectedMenuItem.text());
		      	
		      	$("#treeview3 > ul > li").each(function(j){
		    	  	if($(this).hasClass("node-selected")){
		    	  		var pageID = selectedMenuItem.attr('id');
		    	  		var oldID = $(this).text().split(":")[0].trim();
		    	  		
		    	  		updateMenuArray(oldID, pageID);
		    	  		treeJson = menuToBootstrapTreeJson();
		    	  		updateTreeItem(this, pageID);
		    	  		
		    	  		if($('#menuItemName').val()!=''){
		    	  			$('#saveItem').removeClass('disabled');
		    	  		}
		    	  		
		    	  		buildTreeMenu(treeJson);
		    			bindTreeMenu();
		    			resetPagesMenu();
		    	  	}
		      	});
		  	}
	   	});
	}
	
	//used as client state of page state to menu state, to remove page items
	//from parent and child select trees to prevent same page being added to menu
	//more than once
	var isParentMenuItem = false;
	var isChildMenuItem = false;
	function pageIDInTree(pageID){
		isParentMenuItem = false;
		isChildMenuItem = false;
		for(i=0;i<MenuItems.length;i++){
			if(MenuItems[i].getPageID()==pageID){
				errorMsg = "Page has been added to menu";
				isParentMenuItem = true;
				return true;
			}
			for(j=0;j<MenuItems[i].getChildMenuItems().length;j++){
				if(MenuItems[i].getChildMenuItems()[j].getPageID()==pageID){
					errorMsg = "Page has been added to menu";
					isChildMenuItem = true;
					return true;
				}
			}
		}
		
		return false;
	}
	
	function pageIDNotInTree(pageID){
		isParentMenuItem = false;
		isChildMenuItem = false;
		for(i=0;i<MenuItems.length;i++){
			if(MenuItems[i].getPageID()==pageID){
				errorMsg = "Page has been added to menu";
				return false;
			}
			for(j=0;j<MenuItems[i].getChildMenuItems().length;j++){
				if(MenuItems[i].getChildMenuItems()[j].getPageID()==pageID){
					errorMsg = "Page has been added to menu";
					return false;
				}
			}
		}
		
		return true;
	}
	
	//reset this, first on first time page loads,
	//then when adding a new parent/child page.
	//then reset when saving page and successful response comes back
	function populatePagesMenu(){
		
		$('#menuDropDown').html('');
		$('#childMenuDropDown').html('');
		
		$.each($.parseJSON(jsonPagesSyndication), function(key,value){
			if(pageIDNotInTree(value.pageId)){
				$("#menuDropDown").append($('<li><a href="#" id='+value.pageId+'>'+value.pageName+'</a></li>'));
				$("#childMenuDropDown").append($('<li><a href="#" id='+value.pageId+'>'+value.pageName+'</a></li>'));
			}
		});
		$("#menuDropDownButton").removeClass("fa fa-refresh fa-spin");
		$("#menuDropDownButton").addClass("caret");
	}
	
	//show the spinner
	function showSpinner(){
		var target = document.getElementById('spinner')
		var spinner = new Spinner(opts).spin(target);
		$('#spinner').show();
	}
	
	//hide spinner
	function hideSpinner(){
		$('#spinner').hide();
		$('#spinner').html('');
	}
	
	function populateGlobNavWidgetMenu(json){
		$("#listGlobalNavigationWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "GLOBAL-NAV-WIDGET:"+value.widgetId;
			$("#listGlobalNavigationWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
		$("#listHomeGlobalNavigationWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "HOME-GLOBAL-NAV-WIDGET:"+value.widgetId;
			$("#listHomeGlobalNavigationWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
	}
	
	function populateCarouselWidgetMenu(json){
		$("#listCarouselWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "CAROUSEL-WIDGET:"+value.widgetId;
			$("#listCarouselWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
		$("#listHomeCarouselWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "HOME-CAROUSEL-WIDGET:"+value.widgetId;
			$("#listHomeCarouselWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
	}
	
	function populateLayoutWidgetMenu(json){
		$("#listLayoutWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "LAYOUT-WIDGET:"+value.widgetId;
			$("#listLayoutWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
		$("#listHomeLayoutWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "HOME-LAYOUT-WIDGET:"+value.widgetId;
			$("#listHomeLayoutWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
	}
	
	function populateFooterWidgetMenu(json){
		$("#listFooterWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "FOOTER-WIDGET:"+value.widgetId;
			$("#listFooterWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
		$("#listHomeFooterWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "HOME-FOOTER-WIDGET:"+value.widgetId;
			$("#listHomeFooterWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
	}
	
	var carouselWidgetMenuSelectItem = null;
	var carouselHomeWidgetMenuSelectItem = null;
	function bindCarouselWidgetMenu(){
		$("#listCarouselWidgetSelect").on('click', 'li a', function(){
			carouselWidgetMenuSelectItem = $(this);
		  	if(carouselWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonCarouselWidgetSelect:first-child").text(carouselWidgetMenuSelectItem.text());
		      	$(".buttonCarouselWidgetSelect:first-child").val(carouselWidgetMenuSelectItem.text());
		      	$("#editCarouselWidget").removeClass('disabled');
		      	updatePageProgressBar();
		  	}
	   	});
		$("#listHomeCarouselWidgetSelect").on('click', 'li a', function(){
			carouselHomeWidgetMenuSelectItem = $(this);
		  	if(carouselHomeWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonHomeCarouselWidgetSelect:first-child").text(carouselHomeWidgetMenuSelectItem.text());
		      	$(".buttonHomeCarouselWidgetSelect:first-child").val(carouselHomeWidgetMenuSelectItem.text());
		      	$("#carouselMenu").val(carouselHomeWidgetMenuSelectItem.text());
		      	updateHomeProgressBar();
		  	}
	   	});
	}
	
	var globNavWidgetMenuSelectItem = null;
	var globHomeNavWidgetMenuSelectItem = null;
	function bindGlobNavWidgetMenu(){
		$("#listGlobalNavigationWidgetSelect").on('click', 'li a', function(){
			globNavWidgetMenuSelectItem = $(this);
		  	if(globNavWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonGlobalNavigationWidgetSelect:first-child").text(globNavWidgetMenuSelectItem.text());
		      	$(".buttonGlobalNavigationWidgetSelect:first-child").val(globNavWidgetMenuSelectItem.text());
		      	$("#editMenuWidget").removeClass('disabled');
		      	updatePageProgressBar();
		  	}
	   	});
		$("#listHomeGlobalNavigationWidgetSelect").on('click', 'li a', function(){
			globHomeNavWidgetMenuSelectItem = $(this);
		  	if(globHomeNavWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonHomeGlobalNavigationWidgetSelect:first-child").text(globHomeNavWidgetMenuSelectItem.text());
		      	$(".buttonHomeGlobalNavigationWidgetSelect:first-child").val(globHomeNavWidgetMenuSelectItem.text());
		      	$("#globalNavigationMenu").val(globHomeNavWidgetMenuSelectItem.text());
		      	updateHomeProgressBar();
		  	}
	   	});
	}
	
	var layoutWidgetMenuSelectItem = null;
	var layoutHomeWidgetMenuSelectItem = null;
	function bindLayoutWidgetMenu(){
		$("#listLayoutWidgetSelect").on('click', 'li a', function(){
			layoutWidgetMenuSelectItem = $(this);
		  	if(layoutWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonLayoutWidgetSelect:first-child").text(layoutWidgetMenuSelectItem.text());
		      	$(".buttonLayoutWidgetSelect:first-child").val(layoutWidgetMenuSelectItem.text());
		      	$("#editLayoutWidget").removeClass('disabled');
		      	updatePageProgressBar();
		  	}
	   	});
		$("#listHomeLayoutWidgetSelect").on('click', 'li a', function(){
			layoutHomeWidgetMenuSelectItem = $(this);
		  	if(layoutHomeWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonHomeLayoutWidgetSelect:first-child").text(layoutHomeWidgetMenuSelectItem.text());
		      	$(".buttonHomeLayoutWidgetSelect:first-child").val(layoutHomeWidgetMenuSelectItem.text());
		      	$("#layoutTemplate").val(layoutHomeWidgetMenuSelectItem.text());
		      	updateHomeProgressBar();
		  	}
	   	});
	}
	
	var footerWidgetMenuSelectItem = null;
	var footerHomeWidgetMenuSelectItem = null;
	function bindFooterWidgetMenu(){
		$("#listFooterWidgetSelect").on('click', 'li a', function(){
			footerWidgetMenuSelectItem = $(this);
		  	if(footerWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonFooterWidgetSelect:first-child").text(footerWidgetMenuSelectItem.text());
		      	$(".buttonFooterWidgetSelect:first-child").val(footerWidgetMenuSelectItem.text());
		      	$("#editFooterWidget").removeClass('disabled');
		      	updatePageProgressBar();
		  	}
	   	});
		$("#listHomeFooterWidgetSelect").on('click', 'li a', function(){
			footerHomeWidgetMenuSelectItem = $(this);
		  	if(footerHomeWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonHomeFooterWidgetSelect:first-child").text(footerHomeWidgetMenuSelectItem.text());
		      	$(".buttonHomeFooterWidgetSelect:first-child").val(footerHomeWidgetMenuSelectItem.text());
		      	$("#footerMenu").val(footerHomeWidgetMenuSelectItem.text());
		      	updateHomeProgressBar();
		  	}
	   	});
	}
	
	function populateImageWidgetMenu(json){
		$("#listImageWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "IMAGE-WIDGET:"+value.widgetId;
			$("#listImageWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
		$("#listHomeImageWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			var id = "HOME-IMAGE-WIDGET:"+value.widgetId;
			$("#listHomeImageWidgetSelect").append($('<li><a href="#" id='+id+'>'+value.widgetDisplayName+'</a></li>'));
		});
	}
	
	var imageWidgetMenuSelectItem = null;
	var homeImageWidgetMenuSelectItem = null;
	function bindImageWidgetMenu(){
		$("#listImageWidgetSelect").on('click', 'li a', function(){
			imageWidgetMenuSelectItem = $(this);
		  	if(imageWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonImageWidgetSelect:first-child").text(imageWidgetMenuSelectItem.text());
		      	$(".buttonImageWidgetSelect:first-child").val(imageWidgetMenuSelectItem.text());
		      	$("#editImageWidget").removeClass('disabled');
		      	updatePageProgressBar();
		  	}
	   	});
		$("#listHomeImageWidgetSelect").on('click', 'li a', function(){
			homeImageWidgetMenuSelectItem = $(this);
		  	if(homeImageWidgetMenuSelectItem.attr('id')!=null){
		  		$(".buttonHomeImageWidgetSelect:first-child").text(homeImageWidgetMenuSelectItem.text());
		      	$(".buttonHomeImageWidgetSelect:first-child").val(homeImageWidgetMenuSelectItem.text());
		      	$("#imageName").val(homeImageWidgetMenuSelectItem.text());
		      	updateHomeProgressBar();
		  	}
	   	});
	}
	
	function populatePageMgrPagesMenu(){
		$("#pageMgrMenuDropDown").html('');
		
		$.each($.parseJSON(jsonPagesSyndication), function(key,value){
			var id = "PAGE:"+value.pageId;
			$("#pageMgrMenuDropDown").append($('<li><a href="#" id='+id+'>'+value.pageName+'</a></li>'));
		});
		
		$("#pageMgrMenuDropDownButton").removeClass("fa fa-refresh fa-spin");
		$("#pageMgrMenuDropDownButton").addClass("caret");
	}
	
	function resetPageBinders(){
		imageWidgetMenuSelectItem = null;
		globNavWidgetMenuSelectItem = null;
		carouselWidgetMenuSelectItem = null;
		layoutWidgetMenuSelectItem = null;
		footerWidgetMenuSelectItem = null;
	}
	
	var pageUpdate = null;
	function bindGetPageResult(json){
		resetPageBinders();
		$.each($.parseJSON(json), function(key,value){
			pageUpdate = value;
			bind(value.displayName,'pageName', null);
			bind(value.titleText,'pageTitleText', null);
			bindSelect(value.hid,'listImageWidgetSelect', 'buttonImageWidgetSelect');
			bindSelect(value.mid,'listGlobalNavigationWidgetSelect', 'buttonGlobalNavigationWidgetSelect');
			bindSelect(value.cid,'listCarouselWidgetSelect', 'buttonCarouselWidgetSelect');
			bindSelect(value.lid,'listLayoutWidgetSelect', 'buttonLayoutWidgetSelect');
			bindSelect(value.fid,'listFooterWidgetSelect', 'buttonFooterWidgetSelect');
		});
		updatePageProgressBar();
		
	}
	
	function getPage(pageID){
		showSpinner();
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/page/"+pageID,
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	bindGetPageResult(decodeJSONSyndication(result,2));
	        	
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            //alert(jqXHR.status + " " + jqXHR.responseText);
	            
	    		hideSpinner();
	        }
	    });
		hideSpinner();
	}
	
	function bindPageMgrPagesMenu(){
		$("#pageMgrMenuDropDown").on('click', 'li a', function(){
			pageMgrSelectedMenuItem = $(this);
		  	if(pageMgrSelectedMenuItem.attr('id')!=null){
		  		$(".pageMgrMenuDropDownButton:first-child").text(pageMgrSelectedMenuItem.text());
		      	$(".pageMgrMenuDropDownButton:first-child").val(pageMgrSelectedMenuItem.text());
		      	$("#editPage").removeClass('disabled');
		      	$("#savePage").text("Update Page");
		      	$('#pagePanelModification').css('display','block');
		      	getPage(pageMgrSelectedMenuItem.attr('id').split(":")[1]);
		  	}
	   	});
	}
	
	function GetPageMenu(){
		if($('#pageMgrMenuDropDown li').length==0){
			$("#pageMgrMenuDropDownButton").removeClass("caret");
			$("#pageMgrMenuDropDownButton").addClass("fa fa-refresh fa-spin");
			showSpinner();
			$.ajax({
		        type: 'GET',
		        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/pages",
				dataType: 'json',
		        async: true,
		        success: function(result) {
		        	//decode and populate menu
	        		decodeJSONPages(result);
		        	populatePageMgrPagesMenu();
		        	bindPageMgrPagesMenu();
		        	hideSpinner();
		        },
		        error: function(jqXHR, textStatus, errorThrown) {
		            alert(jqXHR.status + " " + jqXHR.responseText);
		            $("#errorContainer").text(jqXHR.responseText);
		    		errorMsg = '';
		    		$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
		            $("#pageMgrMenuDropDownButton").removeClass("fa fa-refresh fa-spin");
		    		$("#pageMgrMenuDropDownButton").addClass("caret");
		    		hideSpinner();
		        }
		    });
		}
	}
	
	//called on first time page loads
	//gets menu raw json and available pages
	var GetMenu = function() {
		
		
		if($('#treeview3').html()==''){
			showSpinner();
			$.ajax({
		        type: 'GET',
		        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/menuItems",
				dataType: 'json',
		        async: true,
		        success: function(result) {
		        	
	        		decodeJSON(result);
	        		jsonToMenuObject(jsonMenuSyndication);
	        		treeJson = menuToBootstrapTreeJson();
	        		
		        	buildTreeMenu(treeJson);
		        	bindTreeMenu();
		        	buildMenuProgress();
		        	hideSpinner();
		        },
		        error: function(jqXHR, textStatus, errorThrown) {
		            $("#errorContainer").text(jqXHR.responseText);
		    		errorMsg = '';
		    		$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
		            $("#menuDropDownButton").removeClass("fa fa-refresh fa-spin");
		    		$("#menuDropDownButton").addClass("caret");
		    		hideSpinner();
		        }
		    });
			//fa fa-refresh fa-spin
			//change to loader on menu
			$("#menuDropDownButton").removeClass("caret");
			$("#menuDropDownButton").addClass("fa fa-refresh fa-spin");
			//ajax call to get menu json
			$.ajax({
		        type: 'GET',
		        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/pages",
				dataType: 'json',
		        async: true,
		        success: function(result) {
		        	//decode and populate menu
	        		decodeJSONPages(result);
		        	populatePagesMenu();
		        	bindPagesMenu();
		        },
		        error: function(jqXHR, textStatus, errorThrown) {
		            //alert(jqXHR.status + " " + jqXHR.responseText);
		            $("#errorContainer").text(jqXHR.responseText);
		    		errorMsg = '';
		    		$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
		            $("#menuDropDownButton").removeClass("fa fa-refresh fa-spin");
		    		$("#menuDropDownButton").addClass("caret");
		    		hideSpinner();
		        }
		    });
			//switch off loader
			
		}
		
	}
	
	//called from menuItemName text field when focus is blurred
	function updateMenuItemName(e){
		errorMsg = '';
		if($(e).val().trim()==''){
			return;
		}
		$("#treeview3 > ul > li").each(function(j){
			var intxt = $(e).val().trim();
			var txt = $(this).text().split(':')[1].trim();
			if(intxt==txt){
				errorMsg='This page menu name has been added';
				//break;
			}
		});
		if(errorMsg==''){
			$("#treeview3 > ul > li").each(function(j){
			  	if($(this).hasClass("node-selected")){
			  		var id = $(this).text().split(':')[0].trim();
			  		updateMenuArrayItemName(id,$(e).val());
			  		treeJson = menuToBootstrapTreeJson();
			  		updateTreeItem(this, id, e);
			  		buildTreeMenu(treeJson);
	    			bindTreeMenu();
	    			populatePagesMenu();
			  		$(e).val('');
			  		$('#saveItem').removeClass('disabled');
			  		$("#addParent").removeClass('disabled');
			  	}
			});
		}else{
			$("#errorContainer").text(errorMsg);
			errorMsg = '';
			$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);	
		}
	}
	
	//generate new json syndication from menu array for passing back to server
	//to store as raw json params of global navigation menu, called from update menu method
	function getNewJsonSyndication(){
		jsonMenuSyndication = [];
		for(i=0;i<MenuItems.length;i++){
			var item = {};
			item.pageID=MenuItems[i].getPageID();
			item.menuItemTitle=MenuItems[i].getMenuItemTitle();
			if(MenuItems[i].getChildMenuItems().length>0){
				subJsonMenuSyndication = [];
				for(x=0;x<MenuItems[i].getChildMenuItems().length;x++){
					var subItem = {};
					subItem.pageID=MenuItems[i].getChildMenuItems()[x].getPageID();
					subItem.menuItemTitle=MenuItems[i].getChildMenuItems()[x].getMenuItemTitle();
					subJsonMenuSyndication.push(subItem);
				}
				item.menuItemChildren=subJsonMenuSyndication;
			}
			jsonMenuSyndication.push(item);
		}
		return jsonMenuSyndication;
	}
	
	//resets stale menu state after successful save to client
	//client side tracker for added and deleted menu items which 
	//controls the state of the progrees bar
	function resetStaleMenuState(){
		staleMenuState = new StaleMenuState();
	}
	
	function previewMenu(){
		showSpinner();
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/previewMenu",
			data : JSON.stringify(jsonMenu),
			dataType : 'json',
			async: false,
			success : function(result) {
				$("#hidePreviewFullScreenPreview").click();
				$("#previewFullScreenPreview").html(decodeJSONForPreview(result));
				$("#jqxMenu").jqxMenu({theme:'light', width:'100%', height:'30px', showTopLevelArrows:true});
                $("#jqxMenu").css('visibility', 'visible');
                hideSpinner();
			},
			error : function(e) {
				alert(jqXHR.status + " " + jqXHR.responseText);
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
	}
	
	//called on the save buuton which savs the menu state to the server
	function updateMenu(obj){
		
		if($(obj).hasClass("disabled")){
			return;
		}
		$('#saveItem').addClass('disabled');
		showSpinner();
		//convert menu to json syndication
		jsonMenu.json=encodeJSON(getNewJsonSyndication());
		//document.write(JSON.stringify(getNewJsonSyndication()));
		//do ajax post here for save
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/updateMenu",
			data : JSON.stringify(jsonMenu),
			dataType : 'json',
			success : function(result) {
				resetStaleMenuState();
				decodeJSON(result);
				jsonToMenuObject(jsonMenuSyndication);
	    		treeJson = menuToBootstrapTreeJson();
	        	buildTreeMenu(treeJson);
	        	bindTreeMenu();
	        	buildMenuProgress();
	        	hideSpinner();
			},
			error : function(e) {
				alert(jqXHR.status + " " + jqXHR.responseText);
				closeSpinner();
			},
			done : function(e) {
				
			}
		});
		//update jsonTree with updated json
	}
	
	//called on get parent, unique id generated for li id attributes
	//on tree menu
	function getNodeID(){
		return ($(".list-group li").size() + 1);
	}
	
	//called from add parent
	//returned selected pageID on menu tree
	function getSelectedPageID(){
		try{
			var page = selectedMenuItem.attr('id');
			if(page==null){
				errorMsg='There is an issue with this page';
			}
			return page;
		}catch(e){return null;}
	}
	
	//called from add parent windown
	function resetPagesMenu(){
		$(".menuDropDownButton:first-child").text('Select Page To Link to Menu Item');
	  	$(".menuDropDownButton:first-child").val('Select Page To Link to Menu Item');
	}
	
	var parentDropDownSelected = null;
	var childSelectedPage = null;
	
	//bootstraps modal windown select boxes and binds event behaviour
	function prepareAddChild(){
		
		//loop menu items, add to modal select box #selectParentDropDown
		$("#selectParentDropDown").html('');
		for(i=0;i<MenuItems.length;i++){
			var pageid = MenuItems[i].getPageID();
			var menuTitle = MenuItems[i].getMenuItemTitle();
			var id = "PARENT-PAGE:"+pageid;
			$("#selectParentDropDown").append($('<li><a href="#" id='+id+'>'+menuTitle+'</a></li>'));
		}
		$("#selectParentDropDown").on('click', 'li a', function(){
		  	parentDropDownSelected = $(this);
		  	if(parentDropDownSelected.attr('id')!=null){
		      	$(".parentDropDownButton:first-child").text(parentDropDownSelected.text());
		      	$(".parentDropDownButton:first-child").val(parentDropDownSelected.text());
		  	}
		});
		
		$("#childMenuDropDown").on('click', 'li a', function(){
		  	childSelectedPage = $(this);
		  	if(childSelectedPage.attr('id')!=null){
		      	$(".childDropDownButton:first-child").text(childSelectedPage.text());
		      	$(".childDropDownButton:first-child").val(childSelectedPage.text());
		  	}
		});
		
	}
	
	//called from  add child button on the add child modal window
	function addChild(){
		//update array
		var menuItemName = $('#menuItemNameChild').val();
		if(menuItemName==''){
			errorMsg = "Please enter child menu item title";
			$("#errorContainer").text(errorMsg);
			errorMsg = '';
			$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
			return;
		}
		if(parentDropDownSelected==null){
			errorMsg = "Please select parent item to add child";
			$("#errorContainer").text(errorMsg);
			errorMsg = '';
			$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
			return;
		}
		if(childSelectedPage==null){
			errorMsg = "Please select page child to link child menu item";
			$("#errorContainer").text(errorMsg);
			errorMsg = '';
			$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
			return;
		}
		
		var mi = new MenuItem();
		mi.setPageID(childSelectedPage.attr('id'));
		mi.setMenuItemTitle(menuItemName);
		
		addChildItemToArray(mi, parentDropDownSelected.attr('id').split(":")[1]);
		treeJson = menuToBootstrapTreeJson();
		buildTreeMenu(treeJson);
		bindTreeMenu();
		staleMenuState.addNew(childSelectedPage.attr('id'));
		buildMenuProgress();
		populatePagesMenu();
		parentDropDownSelected = null;
		childSelectedPage = null;
		
		$('#saveItem').removeClass('disabled');
	}
	
	
	//adds child menu item to array, called from addChild
	function addChildItemToArray(ai, index){
		for(i=0;i<MenuItems.length;i++){
			if(MenuItems[i].getPageID()==index){
				MenuItems[i].addChildMenuItem(ai);
				break;
			}
		}
	}
	
	//called from the add parent button
	//adds parent menu item to tree
	function addParent(){
		
		//append li to parent
		var error = false;
		
		if(getSelectedPageID()!=null){
			errorMsg = 'Please select a page';
		}
		if($("#menuItemName").val()!=''&&getSelectedPageID()!=null&&pageIDNotInTree(getSelectedPageID())){
			var mi = new MenuItem();
			mi.setPageID(getSelectedPageID());
			mi.setMenuItemTitle($("#menuItemName").val());
			var item='<li class="list-group-item node-treeview3" data-nodeid="'+getNodeID()+'"';
				item+='style="color:undefined;background-color:undefined;">';
				item+='<span class="icon expand-icon glyphicon glyphicon-minus"></span>';
				item+='<span class="icon node-icon"></span>';
				item+=mi.getPageID()+' : '+mi.getMenuItemTitle();
				item+='</li>';
			$(".list-group").append(item);
			MenuItems.push(mi);
			treeJson = menuToBootstrapTreeJson();
			buildTreeMenu(treeJson);
			bindTreeMenu();
			//removePageFromMenuList(mi.getPageID());
			//TODO ADD to deleted
			staleMenuState.addNew(mi.getPageID());
			resetPagesMenu();
			buildMenuProgress();
			populatePagesMenu();
			$('#saveItem').removeClass('disabled');
		}else{
			error=true;
		}
		if(error){
			if(errorMsg==''){
				$("#menuItemName").focus();
				errorMsg = "Please enter name for menu Item";
			}
			$("#errorContainer").text(errorMsg);
			errorMsg = '';
			$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
		}
	}
	
	//invokes page manager tab
	function pageManager(){
		$('.nav-tabs a[href="#3"]').tab('show');
	}
	function menuManager(){
		$('.nav-tabs a[href="#2"]').tab('show');
		GetMenu();
	}
	function documentManager(){
		$('.nav-tabs a[href="#5"]').tab('show');
	}
	
	function checkAndRemoveNewPage(selectedPageID){
		for(a=0;a<staleMenuState.countNew();a++){
			if(staleMenuState.getNewItems()[a]==selectedPageID){
				staleMenuState.getNewItems().splice(a,1);
				return true;
			}
		}
		return false;
	}

	function deleteMenuItem(){
		//get selected menu item
		if($("#deleteItem").hasClass("disabled")){
			return;
		}
		var inTree = pageIDInTree(selectedPageID);
		
		if(inTree){
			var subIndex = -1;
			var deleteAllSubItems = false;
			for(i=0;i<MenuItems.length;i++) {
			    if(MenuItems[i].getPageID()==selectedPageID) {
			    	//check if its a new page thats been deleted, remove if so,
			    	if(checkAndRemoveNewPage(selectedPageID)){
			    	//empty block, no need to do anything
			    	}else{
			    	//else add to deleted stale state
			    		staleMenuState.addDeleted(selectedPageID);
			    	}
			    	deleteAllSubItems = true;
			    	subIndex=i;
			    	break;
			    }else{
			    	for(x=0;x<MenuItems[i].getChildMenuItems().length;x++){
			    		if(MenuItems[i].getChildMenuItems()[x].getPageID()==selectedPageID){
					    	MenuItems[i].getChildMenuItems().splice(x,1);
					    	if(checkAndRemoveNewPage(selectedPageID)){
					    	//empty block, no need to do anything
					    	}else{
					    	//else add to deleted stale state
					    		staleMenuState.addDeleted(selectedPageID);
					    	}
					    	break;
			    		}
				    }
			    }
			}
			
			if(deleteAllSubItems){
		    	for(x=0;x<MenuItems[subIndex].getChildMenuItems().length;x++){
			    	MenuItems[subIndex].getChildMenuItems().splice(x,1);
			    	if(checkAndRemoveNewPage(selectedPageID)){
			    	//empty block, no need to do anything
			    	}else{
			    	//else add to deleted stale state
			    		staleMenuState.addDeleted(selectedPageID);
			    	}
			    }
		    	MenuItems.splice(subIndex, 1);
		    	deleteAllSubItems = false;
		    }
			
			buildTreeMenu(menuToBootstrapTreeJson());
			bindTreeMenu();
			populatePagesMenu();
			buildMenuProgress();
			$("#deleteItem").addClass("disabled");
		}
	}
	
	function selectLoad(select){
		select.removeClass("caret");
		select.addClass("fa fa-refresh fa-spin");
	}
	
	function selectUnLoad(select){
		select.removeClass("fa fa-refresh fa-spin");
		select.addClass("caret");
	}
	
	function populateImageWidgetSelect(){
		selectLoad($('#loadHomeImageWidgetSelect'));
		selectLoad($('#loadImageWidgetSelect'));
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/HEADER",
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		populateImageWidgetMenu(decodeJSONSyndication(result,0));
		        	bindImageWidgetMenu();
	        	}catch(e){alert(e)}
	        	
	        	selectUnLoad($('#loadHomeImageWidgetSelect'));
	        	selectUnLoad($('#loadImageWidgetSelect'));
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	selectUnLoad($('#loadHomeImageWidgetSelect'));
	        	selectUnLoad($('#loadImageWidgetSelect'));
	        }
	    });
	}
	
	function populateGlobNavWidgetSelect(){
		selectLoad($('#loadHomeGlobalNavigationWidgetSelect'));
		selectLoad($('#loadGlobalNavigationWidgetSelect'));
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/MENU",
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		populateGlobNavWidgetMenu(decodeJSONSyndication(result,1));
		        	bindGlobNavWidgetMenu();
	        	}catch(e){}
	        	
	        	selectUnLoad($('#loadHomeGlobalNavigationWidgetSelect'));
	        	selectUnLoad($('#loadGlobalNavigationWidgetSelect'));
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	selectUnLoad($('#loadHomeGlobalNavigationWidgetSelect'));
	        	selectUnLoad($('#loadGlobalNavigationWidgetSelect'));
	        }
	    });
	}
	
	function populateCarouselWidegtSelect(){
		selectLoad($('#loadHomeCarouselWidgetSelect'));
		selectLoad($('#loadCarouselWidgetSelect'));
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/CAROUSEL",
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		populateCarouselWidgetMenu(decodeJSONSyndication(result,1));
		        	bindCarouselWidgetMenu();
	        	}catch(e){}
	        	
	        	selectUnLoad($('#loadHomeCarouselWidgetSelect'));
	        	selectUnLoad($('#loadCarouselWidgetSelect'));
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	selectUnLoad($('#loadHomeCarouselWidgetSelect'));
	        	selectUnLoad($('#loadCarouselWidgetSelect'));
	        }
	    });
	}
	
	function populateLayoutWidgetSelect(){
		selectLoad($('#loadHomeLayoutWidgetSelect'));
		selectLoad($('#loadLayoutWidgetSelect'));
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/LAYOUT",
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		populateLayoutWidgetMenu(decodeJSONSyndication(result,2));
		        	bindLayoutWidgetMenu();
	        	}catch(e){}
	        	
	        	selectUnLoad($('#loadHomeLayoutWidgetSelect'));
	        	selectUnLoad($('#loadLayoutWidgetSelect'));
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	selectUnLoad($('#loadHomeLayoutWidgetSelect'));
	        	selectUnLoad($('#loadLayoutWidgetSelect'));
	        }
	    });
	}
	
	function populateFooterWidgetSelect(){
		selectLoad($('#loadHomeFooterWidgetSelect'));
		selectLoad($('#loadFooterWidgetSelect'));
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/FOOTER",
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		populateFooterWidgetMenu(decodeJSONSyndication(result,2));
		        	bindFooterWidgetMenu();
	        	}catch(e){}
	        	
	        	selectUnLoad($('#loadHomeFooterWidgetSelect'));
	        	selectUnLoad($('#loadFooterWidgetSelect'));
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	selectUnLoad($('#loadHomeFooterWidgetSelect'));
	        	selectUnLoad($('#loadFooterWidgetSelect'));
	        }
	    });
	}
	
	function loadHomePageMenus(){
		showSpinner();
		
		if(getImageWidgetSelectLen()<=0){
			populateImageWidgetSelect();
		}
		
		if(getGlobNavWidgetSelectLen()<=0){
			populateGlobNavWidgetSelect();
		}
		
		if(getCarouselWidegtSelectLen()<=0){
			populateCarouselWidegtSelect();
		}
		
		if(getListLayoutWidgetSelectLen()<=0){
			populateLayoutWidgetSelect();
		}
		
		if(getListFooterWidgetSelectLen()<=0){
			populateFooterWidgetSelect();
		}
		
		loadHomePageSavedWidgets();
		
		hideSpinner();
	}
	
	function setHid(){
		if(homeImageWidgetMenuSelectItem!=null){
			return homeImageWidgetMenuSelectItem.attr("id").split(":")[1];
		}else{
			return 0;
		}
	}
	
	function setMid(){
		if(globHomeNavWidgetMenuSelectItem!=null){
			return globHomeNavWidgetMenuSelectItem.attr("id").split(":")[1];
		}else{
			return 0;
		}
	}
	
	function setCid(){
		if(carouselHomeWidgetMenuSelectItem!=null){
			return carouselHomeWidgetMenuSelectItem.attr("id").split(":")[1];
		}else{
			return 0;
		}
	}
	
	function setLid(){
		if(layoutHomeWidgetMenuSelectItem!=null){
			return layoutHomeWidgetMenuSelectItem.attr("id").split(":")[1];
		}else{
			return 0;
		}
	}
	
	function setFid(){
		if(footerHomeWidgetMenuSelectItem!=null){
			return footerHomeWidgetMenuSelectItem.attr("id").split(":")[1];
		}else{
			return 0;
		}
	}
	
	function getPageJSON(isUpdate){
		var jsonStr = null;
		if(isUpdate){
			jsonStr = pageUpdate;
		}else{
			jsonStr = {};
		}
		jsonStr.displayName=$("#pageName").val();
		jsonStr.titleText=$("#pageTitleText").val();
		if(imageWidgetMenuSelectItem!=null){
			jsonStr.hid=imageWidgetMenuSelectItem.attr("id").split(":")[1];
		}
		if(globNavWidgetMenuSelectItem!=null){
			jsonStr.mid=globNavWidgetMenuSelectItem.attr("id").split(":")[1];
		}
		if(carouselWidgetMenuSelectItem!=null){
			jsonStr.cid=carouselWidgetMenuSelectItem.attr("id").split(":")[1];
		}
		if(layoutWidgetMenuSelectItem!=null){
			jsonStr.lid=layoutWidgetMenuSelectItem.attr("id").split(":")[1];		
		}
		if(footerWidgetMenuSelectItem!=null){
			jsonStr.fid=footerWidgetMenuSelectItem.attr("id").split(":")[1];
		}	
		return JSON.stringify(jsonStr);
	}
	
	function savePage(updateOrCreate){
		showSpinner();
		if($(updateOrCreate).text()=='Create Page'){
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : ADMIN_SERVICES_REST_PREFIX + "/rest/page/create",
				data : getPageJSON(false),
				dataType : 'json',
				async: false,
				success : function(result) {
					
				},
				error : function(jqXHR, textStatus, errorThrown) {
					hideSpinner();
				},
				done : function(e) {
					
				}
			});
		}else if($(updateOrCreate).text()=='Update Page'){
			//log.debug(getPageJSON(true));
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : ADMIN_SERVICES_REST_PREFIX + "/rest/page/update",
				data : getPageJSON(true),
				dataType : 'json',
				async: false,
				success : function(result) {
					
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert(errorThrown);
					hideSpinner();
				},
				done : function(e) {
					
				}
			});
		}
		hideSpinner();
	}
	
	function saveHomePage(){
		var page = {};
		page.hid=setHid();
		page.titleText=$("#titleText").val();
		page.mid=setMid();
		page.cid=setCid();
		page.lid=setLid();
		page.fid=setFid();
		
		//log.debug(JSON.stringify(page));
		showSpinner();
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/page/save",
			data : JSON.stringify(page),
			dataType : 'json',
			success : function(result) {
				try{
					
				}catch(e){
					
					hideSpinner();
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
		hideSpinner();
	}
	
	function setSelectedBinder(jq, list){
		if(list=='listHomeImageWidgetSelect'){
			homeImageWidgetMenuSelectItem = jq;
		}else if(list=='listHomeGlobalNavigationWidgetSelect'){
			globHomeNavWidgetMenuSelectItem = jq;
		}else if(list=='listHomeCarouselWidgetSelect'){
			carouselHomeWidgetMenuSelectItem = jq;
		}else if(list=='listHomeLayoutWidgetSelect'){
			layoutHomeWidgetMenuSelectItem = jq;
		}else if(list=='listHomeFooterWidgetSelect'){
			footerHomeWidgetMenuSelectItem = jq;
		}else if(list=='listImageWidgetSelect'){
			imageWidgetMenuSelectItem = jq;
		}else if(list=='listGlobalNavigationWidgetSelect'){
			globNavWidgetMenuSelectItem = jq;
		}else if(list=='listCarouselWidgetSelect'){
			carouselWidgetMenuSelectItem = jq;
		}else if(list=='listLayoutWidgetSelect'){
			layoutWidgetMenuSelectItem = jq;
		}else if(list=='listFooterWidgetSelect'){
			footerWidgetMenuSelectItem = jq;
		}
	}
	
	function getWidgetDisplayName(id,list){
		var txt = '';
		$("#"+list+" > li > a").each(function(j){
			//log.debug($(this).attr("id"));
			if(id==$(this).attr("id").split(":")[1]){
				txt = $(this).text();
				setSelectedBinder($(this), list);
			}
		});
		return txt;
	}
	
	function bindSelect(id,list, button){
		$("#"+list+" > li > a").each(function(j){
			if(id==$(this).attr("id").split(":")[1]){
				$("."+button+":first-child").text($(this).text());
		      	$("."+button+":first-child").val($(this).text());
				setSelectedBinder($(this), list);
			}
		});
	}
	
	function bind(id, field, list){
		if(id!=null){
			if(list!=null){
				$("#"+field).val(getWidgetDisplayName(id,list));
			}else{
				$("#"+field).val(id);
			}
		}
	}
	
	function updatePageProgressBar(){
		var allParts = 7;
		var modified = 0;
		if($("#pageName").val()!=''){
			modified++;
		}
		if($("#pageTitleText").val()!=''){
			modified++;		
		}
		if(imageWidgetMenuSelectItem != null){
			modified++;
		}
		if(globNavWidgetMenuSelectItem != null){
			modified++;
		}
		if(carouselWidgetMenuSelectItem != null){
			modified++;
		}
		if(layoutWidgetMenuSelectItem != null){
			modified++;
		}
		if(footerWidgetMenuSelectItem != null){
			modified++;
		}
		var itemPrec = (100/allParts);
		var perc = (itemPrec*modified);
		
		if(modified==0){
			perc=-1;
		}
		
		for(i=0;i<(perc+1);i++){
			$("#Page_Build_Progress").width( (i+1) + '%' );
			$('#Page_Build_Progress').prop('aria-valuenow', (i+1));
		}
	}
	
	function updateHomeProgressBar(){
		var allParts = 6;
		var modified = 0;
		if($("#imageName").val()!=''){
			modified++;
		}
		if($("#titleText").val()!=''){
			modified++;		
		}
		if($("#globalNavigationMenu").val()!=''){
			modified++;
		}
		if($("#carouselMenu").val()!=''){
			modified++;
		}
		if($("#layoutTemplate").val()!=''){
			modified++;
		}
		if($("#footerMenu").val()!=''){
			modified++;
		}
		//Home_Page_Build_Progress
		var itemPrec = (100/allParts);
		var perc = (itemPrec*modified);
		
		if(modified==0){
			perc=-1;
		}
		
		for(i=0;i<(perc+1);i++){
			$("#Home_Page_Build_Progress").width( (i+1) + '%' );
			$('#Home_Page_Build_Progress').prop('aria-valuenow', (i+1));
		}
	}
	
	function updateHomePageFields(json){
		$.each($.parseJSON(json), function(key,value){
			bind(value.hid,'imageName', 'listHomeImageWidgetSelect');
			bind(value.titleText,'titleText', null);
			bind(value.mid,'globalNavigationMenu', 'listHomeGlobalNavigationWidgetSelect');
			bind(value.cid,'carouselMenu', 'listHomeCarouselWidgetSelect');
			bind(value.lid,'layoutTemplate', 'listHomeLayoutWidgetSelect');
			bind(value.fid,'footerMenu', 'listHomeFooterWidgetSelect');
		});
		updateHomeProgressBar();
	}
	
	function loadHomePageSavedWidgets(){
		$.ajax({
			type : "GET",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/page/home",
			dataType : 'json',
			async: false,
			success : function(result) {
				try{
					updateHomePageFields(decodeJSONSyndication(result,2));
				}catch(e){
					hideSpinner();
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
	}
	
	function createPage(){
		showSpinner();
		$("#savePage").text("Create Page");
		$('#pagePanelModification').css('display','block');
		
		if(getImageWidgetSelectLen()<=0){
			populateImageWidgetSelect();
		}
		
		if(getGlobNavWidgetSelectLen()<=0){
			populateGlobNavWidgetSelect();
		}
		
		if(getCarouselWidegtSelectLen()<=0){
			populateCarouselWidegtSelect();
		}
		
		if(getListLayoutWidgetSelectLen()<=0){
			populateLayoutWidgetSelect();
		}
		
		if(getListFooterWidgetSelectLen()<=0){
			populateFooterWidgetSelect();
		}
		
		hideSpinner();
	}
	
	function getListFooterWidgetSelectLen(){
		return $('#listFooterWidgetSelect li').length;
	}
	
	function getImageWidgetSelectLen(){
		return $('#listImageWidgetSelect li').length;
	}
	
	function getCarouselWidegtSelectLen(){
		return $('#listCarouselWidgetSelect li').length;
	}
		
	function getGlobNavWidgetSelectLen(){
		return $('#listGlobalNavigationWidgetSelect li').length;
	}
	
	function getListLayoutWidgetSelectLen(){
		return $('#listLayoutWidgetSelect li').length;
	}
	
	var templateCreated = false;
	function activateTemplateCreator(){
		template = -1;
		changeSaveUpdateState(false);
		//default template select box
		$(".listLayoutForTemplatesWidgetButton:first-child").text('Existing Template');
  		$(".listLayoutForTemplatesWidgetButton:first-child").val('Existing Template');
		//disable edit button
		$("#editTemplate").addClass('disabled');
		//deactivate fields selection div if open will close, clear the div
		$("#templateEditors").css('display','none');
		$("#editors").html('');
		//activate template seletion div show layout templates
		$("#layoutName").val('');
		$("#selectTemplate").css("display","block");
		if(templateCreated){
			$("#collapseTemplates").addClass("in");
			templateCreated = false;
		}
	}
	
	function createTemplate(){
		//check if existing layout is being edited
		if(templateWidgetMenuSelectItem!=null){
			//if so send confirmation message, either proceed or not
			$("#hideCreateTemplateConfirm").click();
		}else{
			activateTemplateCreator();
		}
	}
	
	function getListLayoutForTemplatesWidgetSelectLen(){
		return $('#listLayoutForTemplatesWidgetSelect li').length;
	}
	
	function populateTemplateWidgetMenu(json){
		$("#listLayoutForTemplatesWidgetSelect").html('');
		$.each($.parseJSON(json), function(key,value){
			$("#listLayoutForTemplatesWidgetSelect").append($('<li><a href="#" id="TEMPLATE-WIDGET:'+value.widgetId+'">'+value.widgetDisplayName+'</a></li>'));
		});
	}
	
	function updateTemplateWidgetMenuItem(json){
		$.each($.parseJSON(json), function(key,value){
			$("#listLayoutForTemplatesWidgetSelect > li > a").each(function(j){
				if(value.widgetId==$(this).attr("id").split(":")[1]){
					$(this).text(value.widgetDisplayName);
				}
			});
		});
		$(".listLayoutForTemplatesWidgetButton:first-child").text("Existing Template");
      	$(".listLayoutForTemplatesWidgetButton:first-child").val("Existing Template");
	}
	
	function updateTemplateWidgetMenu(json){
		$.each($.parseJSON(json), function(key,value){
			$("#listLayoutForTemplatesWidgetSelect").append($('<li><a href="#" id="TEMPLATE-WIDGET:'+value.widgetId+'">'+value.widgetDisplayName+'</a></li>'));
		});
	}
	
	function populateEditors(json){
		$.each($.parseJSON(json), function(key,value){
			$("#editors").html(value.templateXML);
		});
		$("#templateEditors").css('display','block');
	}
	
	function LeftRight_Binder(){
		this.bind = function(){
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('leftEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('rightEditor');
		}
		this.decode = function(){
			nicEditors.findEditor("leftEditor").setContent(decodeString(nicEditors.findEditor("leftEditor").getContent()));
			nicEditors.findEditor("rightEditor").setContent(decodeString(nicEditors.findEditor("rightEditor").getContent()));
		}
	}
	
	function ThreeTierCenterBig_Binder(){
		this.bind = function(){
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('leftEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('rightEditor');
		}
		this.decode = function(){
			nicEditors.findEditor("leftEditor").setContent(decodeString(nicEditors.findEditor("leftEditor").getContent()));
			nicEditors.findEditor("middleEditor").setContent(decodeString(nicEditors.findEditor("middleEditor").getContent()));
			nicEditors.findEditor("rightEditor").setContent(decodeString(nicEditors.findEditor("rightEditor").getContent()));
		}
	}
	
	function TopBottomCenter_Binder(){
		this.bind = function(){
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('topEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleOneEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('bottomEditor');
		}
		this.decode = function(){
			nicEditors.findEditor("topEditor").setContent(decodeString(nicEditors.findEditor("topEditor").getContent()));
			nicEditors.findEditor("middleOneEditor").setContent(decodeString(nicEditors.findEditor("middleOneEditor").getContent()));
			nicEditors.findEditor("bottomEditor").setContent(decodeString(nicEditors.findEditor("bottomEditor").getContent()));
		}
	}
	
	function TopBottomTwoCenterEqual_Binder(){
		this.bind = function(){
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('topEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleOneEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleTwoEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('bottomEditor');
		}
		this.decode = function(){
			nicEditors.findEditor("topEditor").setContent(decodeString(nicEditors.findEditor("topEditor").getContent()));
			nicEditors.findEditor("middleOneEditor").setContent(decodeString(nicEditors.findEditor("middleOneEditor").getContent()));
			nicEditors.findEditor("middleTwoEditor").setContent(decodeString(nicEditors.findEditor("middleTwoEditor").getContent()));
			nicEditors.findEditor("bottomEditor").setContent(decodeString(nicEditors.findEditor("bottomEditor").getContent()));
		}
	}
	
	function TopThreeEqualTierBottom_Binder(){
		this.bind = function(){
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('topEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleOneEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleTwoEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleThreeEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('bottomEditor');
		}
		this.decode = function(){
			nicEditors.findEditor("topEditor").setContent(decodeString(nicEditors.findEditor("topEditor").getContent()));
			nicEditors.findEditor("middleOneEditor").setContent(decodeString(nicEditors.findEditor("middleOneEditor").getContent()));
			nicEditors.findEditor("middleTwoEditor").setContent(decodeString(nicEditors.findEditor("middleTwoEditor").getContent()));
			nicEditors.findEditor("middleThreeEditor").setContent(decodeString(nicEditors.findEditor("middleThreeEditor").getContent()));
			nicEditors.findEditor("bottomEditor").setContent(decodeString(nicEditors.findEditor("bottomEditor").getContent()));
		}
	}
	
	function TopTwoThreeEqualTierBottom_Binder(){
		this.bind = function(){
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('topEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleOneEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleTwoEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleThreeEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleFourEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleFiveEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('middleSixEditor');
			new nicEditor({fullPanel : true,maxHeight : 200}).panelInstance('bottomEditor');
		}
		this.decode = function(){
			nicEditors.findEditor("topEditor").setContent(decodeString(nicEditors.findEditor("topEditor").getContent()));
			nicEditors.findEditor("middleOneEditor").setContent(decodeString(nicEditors.findEditor("middleOneEditor").getContent()));
			nicEditors.findEditor("middleTwoEditor").setContent(decodeString(nicEditors.findEditor("middleTwoEditor").getContent()));
			nicEditors.findEditor("middleThreeEditor").setContent(decodeString(nicEditors.findEditor("middleThreeEditor").getContent()));
			nicEditors.findEditor("middleFourEditor").setContent(decodeString(nicEditors.findEditor("middleFourEditor").getContent()));
			nicEditors.findEditor("middleFiveEditor").setContent(decodeString(nicEditors.findEditor("middleFiveEditor").getContent()));
			nicEditors.findEditor("middleSixEditor").setContent(decodeString(nicEditors.findEditor("middleSixEditor").getContent()));
			nicEditors.findEditor("bottomEditor").setContent(decodeString(nicEditors.findEditor("bottomEditor").getContent()));
		}
	}
	
	function EditorFactory(){
		this.createEditorBinder = function(){
			var editorBinder = null;
			switch(template){
				case 1:
					editorBinder = new TopThreeEqualTierBottom_Binder();
					break;
				case 2:
					editorBinder = new ThreeTierCenterBig_Binder();
					break;
				case 3:
					editorBinder = new TopThreeEqualTierBottom_Binder();
					break;
				case 4:
					editorBinder = new TopBottomTwoCenterEqual_Binder();
					break;
				case 5:
					editorBinder = new TopBottomCenter_Binder();
					break;
				case 6:
					editorBinder = new TopBottomTwoCenterEqual_Binder();
					break;
				case 7:
					editorBinder = new LeftRight_Binder();
					break;
				case 8:
					editorBinder = new LeftRight_Binder();
					break;
				case 9:
					editorBinder = new TopThreeEqualTierBottom_Binder();
					break;
				case 10:
					editorBinder = new LeftRight_Binder();
					break;
				case 11:
					editorBinder = new TopTwoThreeEqualTierBottom_Binder();
					break;
				case 12:
					editorBinder = new TopBottomTwoCenterEqual_Binder();
					break;
					
			}
			return editorBinder;
		}
	}
	
	function decodeEditors(){
		var editorFactory = new EditorFactory();
		var editorBinder = editorFactory.createEditorBinder();
		try{
			editorBinder.decode();
		}catch(e){
			showErrorMsg(e.message);
		}
	}
	
	function bindEditors(){
		//create eidtor factory
		var editorFactory = new EditorFactory();
		var editorBinder = editorFactory.createEditorBinder();
		try{
			editorBinder.bind();
		}catch(e){
			showErrorMsg(e.message);
		}
	}
	
	function updateLayout(){
		if(!validateTemplate())
			return;
		
		var confirmEditors = validateEditors();
		if(confirmEditors){
			$("#hideSaveLayout").click();
		}else{
			proceedUpdateLayout();
		}
	}
	
	function proceedUpdateLayout(){
		var editorsJson = [];
		var item = {};
		var editors = {};
		var editorsWrapper = {};
		item.layoutID = template;
		item.layoutName = $("#layoutName").val();
		item.widgetID = templateWidgetMenuSelectItem.attr('id').split(":")[1];
		$("textarea").each(function(){
			if($(this).hasClass('forEditor')){
				editorsWrapper[this.name] = encodeString(nicEditors.findEditor(this.name).getContent());
			}
		});
		editors.listOfEditors = editorsWrapper;
		item.editors=editors;
		showSpinner();
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/templates/update",
			data : JSON.stringify(item),
			dataType : 'json',
			success : function(result) {
				//populateTemplateWidgetMenu
				try{
					updateTemplateWidgetMenuItem(decodeJSONSyndication(result,2));
					unbindAndCloseEditors();
					hideSpinner();
					template = -1;
				}catch(e){
					hideSpinner();
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
	}
	
	function changeSaveUpdateState(flag){
		//saveLayout
		if(flag){
			//its an update
			$("#saveLayout").removeAttr("onclick");
			$("#hideSaveLayout").removeAttr("data-on-confirm");
			
			$("#saveLayout").attr("onclick", "updateLayout()");
			$("#saveLayout").attr("data-on-confirm", "proceedUpdateLayout");
			$("#saveLayout").text('Update Layout');
		}else{
			//its a save
			$("#saveLayout").removeAttr("onclick");
			$("#hideSaveLayout").removeAttr("data-on-confirm");
			
			$("#saveLayout").attr("onclick", "saveLayout()");
			$("#saveLayout").attr("data-on-confirm", "proceedSaveLayout");
			$("#saveLayout").text('Save Layout');
		}
	}
	
	function getTemplateName(){
		if(previousTemplateWidgetMenuSelectItem!=null){
			return "template "+previousTemplateWidgetMenuSelectItem.text();
		}else{
			if($("#layoutName").val()!=''){
				return "template "+$("#layoutName").val();
			}else{
				return "a new template";
			}
		}
	}
	
	function getTemplateState(){
		if($("#saveLayout").text()=='Save Layout'){
			return "SAVING"
		}else{
			return "UPDATING";
		}
	}
	
	var templateWidgetMenuSelectItem = null;
	var previousTemplateWidgetMenuSelectItem = null;
	function bindTemplateWidgetMenu(){
		$("#listLayoutForTemplatesWidgetSelect").on('click', 'li a', function(){
			templateWidgetMenuSelectItem = $(this);
		  	if(templateWidgetMenuSelectItem.attr('id')!=null){
		  		$(".listLayoutForTemplatesWidgetButton:first-child").text(templateWidgetMenuSelectItem.text());
		      	$(".listLayoutForTemplatesWidgetButton:first-child").val(templateWidgetMenuSelectItem.text());
		      	$("#editTemplate").removeClass('disabled');
		      	//check if editors are being modified
		      	//if so throw confirmation message for either save or delete action
		      	//we determine this from reading text of button id saveLayout
		      	if(activeEditors()){
		      		//log.debug("activity check...");
		      		$("#confirmTemplateChange").removeAttr("data-content");
		      		var dataMsg = "You are currently "+getTemplateState()+" "+getTemplateName();
		      		$("#confirmTemplateChange").attr("data-content",dataMsg);
		      		$("#confirmTemplateChange").click();
		      	}else{
		      		//log.debug("no activity check...");
		      		getWidgetProxy();
		      	}
		  	}
	   	});
	}
	
	function getWidgetProxy(){
		previousTemplateWidgetMenuSelectItem = templateWidgetMenuSelectItem;
		getWidget(templateWidgetMenuSelectItem.attr('id').split(":")[1]);
  		changeSaveUpdateState(true);
	}
	
	function getWidget(id){
		showSpinner();
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/widget/"+id,
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		//get result and populate editors pane
	        		updateWidgetEditors(decodeJSONSyndication(result,2));
	        		bindEditors();
	        		decodeEditors();
	        		runTemplateProgressBar();
	        		hideSpinner();
	        	}catch(e){}
	        	
	        	
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	hideSpinner();
	        }
	    });
	}
	
	var serverWidget = null;
	

	function updateWidgetEditors(json){
		$("#editors").css("display","none");
		$("#templateEditors").css("display","none");
		$.each($.parseJSON(json), function(key,value){
			serverWidget = value;
			$("#editors").html(decodeString(value.widgetTransientSnippet));
			$("#layoutName").val(value.widgetDisplayName);
			template = parseInt(value.widgetTemplateID);
		});
		$("#templateEditors").css("display","block");
		$("#editors").css("display","block");
	}
	
	function populateListLayoutForTemplatesWidgetSelect(){
		showSpinner();
		selectLoad($('#listLayoutForTemplatesWidgetButtonLoad'));
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/LAYOUT",
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		populateTemplateWidgetMenu(decodeJSONSyndication(result,2));
		        	bindTemplateWidgetMenu();
	        	}catch(e){}
	        	
	        	selectUnLoad($('#listLayoutForTemplatesWidgetButtonLoad'));
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	selectUnLoad($('#listLayoutForTemplatesWidgetButtonLoad'));
	        }
	    });
		hideSpinner();
	}
	
	function GetTemplatesMenu(){
		if(getListLayoutForTemplatesWidgetSelectLen()<=0){
			populateListLayoutForTemplatesWidgetSelect();
		}
	}
	
	function simTemplatesClick(){
		if($("collapseTemplates").hasClass("in")){
			$("#simTempCollapse").click();
		}else{
			$("#collapseTemplates").addClass("in");
		}
	}
	function collapseTemplates(){
		if($("#collapseTemplates").hasClass('panel-collapse')){
			simTemplatesClick();
		}else{
			$("#collapseTemplates").addClass("panel-collapse collapse");
		}	
	}

	var template = -1;
	
	function activeEditors(){
		var active = false;
		$("textarea").each(function(){
			if($(this).hasClass('forEditor')){
				if(nicEditors.findEditor(this.name).getContent()!='<br>' && nicEditors.findEditor(this.name).getContent()!=''){
					active = true;
				}
			}
		});
		return active;
	}

	function proceedWithTemplate(){
		previousTemplateWidgetMenuSelectItem = null;
		template = transientTemplate;
		showSpinner();
		$.ajax({
	        type: 'GET',
	        url:  ADMIN_SERVICES_REST_PREFIX + "/rest/templates/new/" + template,
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		populateEditors(decodeJSONSyndication(result,3));
	        		bindEditors();
	        		collapseTemplates();
	        	}catch(e){}
	        	
	        	
	    		
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	alert(errorThrown);
	        	alert(textStatus);
	        }
	    });
		hideSpinner();
	}

	var transientTemplate = -1;
	function getTemplate(templateIndex){
		if(templateIndex==template){
			return;
		}
		transientTemplate = templateIndex;
		if(activeEditors()){
			$("#layout"+templateIndex).click();
		}else{
			proceedWithTemplate();
		}
	}

	function showErrorMsg(msg){
		$("#errorContainer").text(msg);
		$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
		return null;
	}
	
	function validateTemplate(){
		//validate layout
		if(template==-1){
			showErrorMsg('No Validate template selected!');
			return false;
		}
		//validate layout name
		if($("#layoutName").val()==''){
			showErrorMsg('You must specify a layout name!');
			return false;
		}
		return true;
	}
	
	function validateEditors(){
		var confirmEditors = false;
		$("textarea").each(function(){
			if($(this).hasClass('forEditor')){
				if(nicEditors.findEditor(this.name).getContent()=='<br>'){
					confirmEditors=true;
				}
			}
		});
		return confirmEditors;
	}
	
	function saveLayout(){
		//validate layout editors
		if(!validateTemplate())
			return;
		
		var confirmEditors = validateEditors();
		if(confirmEditors){
			$("#hideSaveLayout").click();
		}else{
			proceedSaveLayout();
		}
		
	}

	function proceedSaveLayout(){
		var editorsJson = [];
		var item = {};
		var editors = {};
		var editorsWrapper = {};
		item.layoutID = template;
		item.layoutName = $("#layoutName").val();
	
		$("textarea").each(function(){
			if($(this).hasClass('forEditor')){
				editorsWrapper[this.name] = encodeString(nicEditors.findEditor(this.name).getContent());
			}
		});
		editors.listOfEditors = editorsWrapper;
		item.editors=editors;
		showSpinner();
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/templates/create",
			data : JSON.stringify(item),
			dataType : 'json',
			success : function(result) {
				//populateTemplateWidgetMenu
				try{
					updateTemplateWidgetMenu(decodeJSONSyndication(result,2));
					bindTemplateWidgetMenu();
					unbindAndCloseEditors();
					hideSpinner();
					templateCreated = true;
					template = -1;
				}catch(e){
					hideSpinner();
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
	}
	
	function unbindAndCloseEditors(){
		$("#editors").html('');
		$("#templateEditors").css('display','none');
	}

	function runTemplateProgressBar(){
		//Template_Build_Progress
		//iterate through editors check if has content
		var editors = 0;
		var modified = 0;
		$("textarea").each(function(){
			if($(this).hasClass('forEditor')){
				editors++;
				if(nicEditors.findEditor(this.name).getContent()!='<br>' && nicEditors.findEditor(this.name).getContent()!=''){
					modified++
				}
			}
		});
		//check value of template name field
		editors++;
		if($('#layoutName').val()!=''){
			modified++;
		}
		
		var itemPrec = (100/editors);
		var perc = (itemPrec*modified);
		
		for(i=0;i<(perc+1);i++){
			$("#Template_Build_Progress").width( (i+1) + '%' );
			$('#Template_Build_Progress').prop('aria-valuenow', (i+1));
		}
	}
	
	function previewLayout(){
		//myModalLabel
		//previewFullScreen
		//hidePreviewFullScreen
		//start up modal
		$("#hidePreviewFullScreen").click();
		var editorsJson = [];
		var item = {};
		var editors = {};
		var editorsWrapper = {};
		item.layoutID = template;
		if(serverWidget!=null){
			item.widgetID=serverWidget.widgetID;
		}
		item.layoutName = $("#layoutName").val();
		$("textarea").each(function(){
			if($(this).hasClass('forEditor')){
				editorsWrapper[this.name] = encodeString(nicEditors.findEditor(this.name).getContent());
			}
		});
		editors.listOfEditors = editorsWrapper;
		item.editors=editors;
		showSpinner();
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/templates/preview",
			data : JSON.stringify(item),
			dataType : 'json',
			success : function(result) {
				
				try{
					loadPreviewModal(decodeJSONSyndication(result,2));
					hideSpinner();
				}catch(e){
					
				}
			},
			error : function(jqXHR, textStatus, errorThrown) {
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
	}
	
	function loadPreviewModalXML(xml, widgetName){
		$("#myModalLabel").html("WIDGET: "+widgetName);
		$("#previewFullScreen").html(xml);
	}
	
	function loadPreviewModal(json){
		$.each($.parseJSON(json), function(key,value){
			$("#myModalLabel").html("TEMPLATE: "+value.widgetDisplayName);
			$("#previewFullScreen").html(cleanMarkUp(decodeString(value.widgetSnippet).replace(/\s+/g, ' ')));
		});
	}
	
	function cleanMarkUp(htmlString){
		var html = htmlString;
		var cleaning = true;
		while (cleaning) {
			if(html.indexOf("&lt;")!=-1||html.indexOf("&gt;")!=-1){
				if(html.indexOf("&lt;")!=-1){
					html = html.replace("&lt;","<");
				}
				if(html.indexOf("&gt;")!=-1){
					html = html.replace("&gt;",">");
				}
			}else{
				cleaning = false;
			}
		}
		return html;
	}
	
	function deleteLayout(){
		
	}
	
	var drawCallBacks = 0;
	function reloadDataTable(table){
		drawCallBacks = 0;
		$('#'+table).DataTable().ajax.reload();
	}
	
	var docConfClicked = false;
	function toggleConfirmation(e){
		var left = Math.round(e.pageX)+"px";
		var top = (Math.round(e.pageY)-30)+"px";
		$("#john").css("display", "block");
		$("#john").css("left", left);
		$("#john").css("top", top);
		
		if(docConfClicked){
			$("#simDocsActions").click();
			$("#simDocsActions").click();
		}else{
			$("#simDocsActions").click();
			docConfClicked = true;
		}
	}
	
	var loadedDocs = false;
	var documentsTable = null;
	var documentsTableRowData = null;
	function GetDocumentsDataTable(){
		if(!loadedDocs){
			showSpinner();
			documentsTable = $('#documentsTBL').DataTable( {
								"ajax": "http://localhost:8080/KSCB-REST-MenuManager/rest/documents",
								"columnDefs": [ {
									"targets": -1,
									"data": null,
									"defaultContent": "<div><button class='btn btn-xs btn-default glyphicon glyphicon-random'></button></div>"
								} ],
								"fnDrawCallback": function( oSettings ) {
									drawCallBacks++;
									if(drawCallBacks==2){
										hideSpinner();
									} 
								}
				
							});
			loadedDocs = true;
		}
	}
	
	function getVideoWiget(url){
		var widget = '<video id="videoWidget" width="600" height="600" controls onloadstart="javascript:hideSpinner();">';
			widget += '<source src="'+url+'" type="video/mp4">';
			widget += '<source src="movie.ogg" type="video/ogg">';
			widget += 'Your browser does not support the video tag.';
			widget += '</video>';
			return widget;
	}
	
	function closeFullScreen(){
		$("#closeFullScreen").click();
	}
	
	function getIFrameWidget(url, shutWindow){
		if(shutWindow){
			return '<iframe id="iframeWidget" src="'+url+'" width="100%" height="100%" onload="javascript:hideSpinner();closeFullScreen();"/>';
		}else{
			return '<iframe id="iframeWidget" src="'+url+'" width="100%" height="100%" onload="javascript:hideSpinner();"/>';
		}
	}
	
	function getImageWidget(url){
		return '<image id="imageWidget" src="'+url+'" onload="javascript:hideSpinner();"/>';
	}
	
	function getVideo(url, name){
		$("#previewFullScreen").html('');
		$("#hidePreviewFullScreen").click();
		$("#myModalLabel").html("VIDEO: "+name);
		$("#previewFullScreen").html(getVideoWiget(url));
	}
	
	function resetDocConf(){
		docConfClicked = false;
		$("#john").css("display", "none");
	}
	
	function showFullScreen(doctype){
		if(doctype=='Image'){
			return true;
		}
		if(doctype=='Video'){
			return true;
		}
		if(doctype=='Word Document'){
			return false;
		}
		if(doctype=='PDF Document'){
			return true;
		}
		return false;
	}
	
	function getDoctypeWidget(doctype, url){
		if(doctype=='Image'){
			return getImageWidget(url);
		}
		if(doctype=='Video'){
			return getVideoWiget(url);	
		}
		if(doctype=='Word Document'){
			return getIFrameWidget(url, true);
		}
		if(doctype=='PDF Document'){
			return getIFrameWidget(url, false);
		}
	}
	
	function actionViewDocument(){
		if(showFullScreen(documentsTableRowData[1])){
			$("#hidePreviewFullScreen").click();
		}
		showSpinner();
		//log.debug(getDoctypeWidget(documentsTableRowData[2], documentsTableRowData[5]));
		$("#previewFullScreen").html(getDoctypeWidget(documentsTableRowData[1], documentsTableRowData[5]));
		resetDocConf();
	}
	
	function actionDownloadDocument(){
		resetDocConf();
	}
	
	function actionDeleteDocument(){
		$("#confirmDocumentDelete").click();
	}
	
	function doDeleteDocument(){
		resetDocConf();
	}
	
	function actionResetDocumentActions(){
		resetDocConf();
	}
	
	function openThunmNailWidget(allowMultiples){
		var title = null;
		var url = null;
		if(allowMultiples){
			title = "Image Thumbnail Selector For Carousel Widget";
			url = ADMIN_SERVICES_REST_PREFIX + "/rest/widget/carousel";
		}else{
			title = "Image Thumbnail Selector For Image Header Widget";
			url = ADMIN_SERVICES_REST_PREFIX + "/rest/widget/thumbnails";
		}
		$("#modal-fullscreen").attr("data-backdrop","static");
		$("#modal-fullscreen").attr("data-keyboard","false");
		$("#hidePreviewFullScreen").click();
		showSpinner();
		$.ajax({
	       	type: 'GET',
	       	url:  url,
			dataType: 'json',
	        async: false,
	        success: function(result) {
	        	
	        	try{
	        		loadPreviewModalXML(stripXMLHeaders(cleanMarkUp(decodeJSONSyndication(result,2))), title);
	        		hideSpinner();
	        	}catch(e){alert(e);}
	        	
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	        	hideSpinner();
	        }
	    });
	}
	
	function stripXMLHeaders(xml){
		return xml.replace('<?xml version="1.0" ?>','');
	}
	
	var saveImageHeaderJSON = {};
	function doConfirmImageSelection(id, name, url){
		saveImageHeaderJSON.id = id;
		saveImageHeaderJSON.name = name;
		saveImageHeaderJSON.url = url;
		$("#imageHeaderWidget").val(saveImageHeaderJSON.name);
	}
	
	function setImageHeaderType(obj){
		saveImageHeaderJSON.type=obj.value;
	}
	
	function setImageHeaderWidgetName(){
		saveImageHeaderJSON.widgetName=$("#headerWidget").val();
	}
	
	function saveHeaderWidget(){
		var msg = '';
		if(saveImageHeaderJSON.id==null){
			msg = "Please confirm Image By selecting it!";
		}
		if(saveImageHeaderJSON.type==null){
			msg = "Please select a header type!";
		}
		if(saveImageHeaderJSON.widgetName==null){
			msg = "Please name your header widget!";
		}
		if(msg!=''){
			$("#errorContainer").text(msg);
			$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
			return;
		}
		showSpinner();
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/saveHeaderWidget",
			data : JSON.stringify(saveImageHeaderJSON),
			dataType : 'json',
			success : function(result) {
				decodeForSuccessOrError(result, 'successIndicator');
				hideSpinner();
			},
			error : function(jqXHR, textStatus, errorThrown) {
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
		
	}
	
	function decodeForSuccessOrError(result, placeHolder){
		$.each($.parseJSON(JSON.stringify(result)), function(key2,value2){
			if(key2=='errorMsg'){
				if(value2=='success'){
					$("#"+placeHolder).append(getSuccessIndicator());
					$("#modal-fullscreen").attr("data-backdrop","static");
					$("#modal-fullscreen").attr("data-keyboard","false");
				}else{
					$("#errorContainer").text(value2);
					$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
				}
			}
		});
	}
	
	function getSuccessIndicator(){
		var indicator = '<div class="checkmark-circle">';
			indicator += '<div class="background"></div>';
			indicator += '<div class="checkmark draw"></div>';
			indicator += '</div>';
		return indicator;
	}
	
	var carouselEntries = [];
	var tempCarouselEntries = [];
	var carouselEntry = {};
	var carousel = {};
	
	function setCarouselName(obj){
		carousel.name=obj.value;
	}
	
	function setCarouselType(obj){
		carousel.type=obj.value;
	}
	
	function saveCarouselWidget(){
		carousel.carouselEntries=carouselEntries;
		showSpinner();
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : ADMIN_SERVICES_REST_PREFIX + "/rest/widgets/saveCarouselWidget",
			data : JSON.stringify(carousel),
			dataType : 'json',
			success : function(result) {
				decodeForSuccessOrError(result, 'successIndicator');
				hideSpinner();
			},
			error : function(jqXHR, textStatus, errorThrown) {
				hideSpinner();
			},
			done : function(e) {
				
			}
		});
	}
	
	function notInCarouselEntries(){
		var notIn = true;
		$.each($.parseJSON(JSON.stringify(carouselEntries)), function(key,value){
			if(value.id==saveImageHeaderJSON.id){
				notIn = false;
			}
		});
		return notIn;
	}
	
	function deleteCarouselEntry(id){
		tempCarouselEntries = [];
		$('tbody#carouselEntries tr#'+id).remove();
		$.each($.parseJSON(JSON.stringify(carouselEntries)), function(key,value){
			if(value.id!=id){
				tempCarouselEntries.push(value);
			}
		});
		carouselEntries=tempCarouselEntries;
	}
	
	function createTableRow(){
		var row='<tr id="'+carouselEntry.id+'">';
			row+='<td><img alt="'+carouselEntry.name+'" src="'+carouselEntry.url+'" width="40" height="40"/></td>';
			row+='<td><table class="table"><thead><tr><th>Header</th><th>Paragraph</th></tr></thead>';
			row+='<tbody><tr><td>'+carouselEntry.header+'</td><td>'+carouselEntry.paragraph+'</td></tr></tbody>';
			row+='</table></td><td><a href="javascript:deleteCarouselEntry('+carouselEntry.id+')">X</a></td>';
			row+='</tr>';
		return row;
	}
	
	
	function addCarouselItem(){
		var msg = null;
		if($("#carouselWidget").val()==''){
			msg = "Please Name Carousel Widget";
		}
		if(carousel.type==null){
			msg = "Please Select a Carousel Type";
		}
		if($("#imageHeaderWidget").val()==''){
			msg = "Select an Image to add to carousel";
		}
		if(!notInCarouselEntries()){
			msg = "This Image is Already Added";
		}
		if(msg!=null){
			$("#errorContainer").text(msg);
			$("#errorContainer").fadeIn(300).delay(3000).fadeOut(1000);
			return;
		}
		$('input[name="carouselWidgetType"]').each(function(){
		    $(this).attr("disabled","true");
		})
		
		$("#carouselWidget").attr("readonly","true");
		
		carouselEntry = {};
		carouselEntry.id=saveImageHeaderJSON.id;
		carouselEntry.url=saveImageHeaderJSON.url;
		carouselEntry.name=saveImageHeaderJSON.name;
		carouselEntry.header=$("#itemHeader").val();
		carouselEntry.paragraph=$("#itemParagraph").val();
		
		carouselEntries.push(carouselEntry);
		
		$("#carouselEntries").append(createTableRow());
		
		$("#imageHeaderWidget").val('');
		$("#itemHeader").val('');
		$("#itemParagraph").val('');
		
	}

</script>
</head>
<body>
	<div class="container">
		<div id="spinner" style="display:none;position:fixed;top:50%;left:50%;z-index:3000;"></div>
		
		<hr></hr>
		<div class="container" id="adminSys">
			<h2>Website Administration System</h2>
			<div class="alert alert-danger fade in alert-dismissable" style="right:0px;display:none;position:fixed;top:5px;z-index:12000" id="errorContainer" align="right">
				<a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
				<strong>ERROR!</strong>
			</div>
		</div>
		<div id="john" style="display:none; position: absolute; left: 600px; top:600px; z-index: 1000">
			
		</div>
		
		<div id="exTab2" class="container">
	
			<div class="modal modal-fullscreen fade" id="modal-fullscreen"
				tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel"></h4>
						</div>
						<div class="modal-body" id="previewFullScreen">
							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal" id="#closeFullScreen">Close</button>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal modal-fullscreen fade" id="modal-fullscreenPreview"
				tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
				aria-hidden="true">
				
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="modal-body" id="previewFullScreenPreview">
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="#closeFullScreenPreview">Close</button>
				</div>
					
			</div>
	
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
				
					<!-- Modal content for adding child page-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">×</button>
							<h4 class="modal-title">Modal Header</h4>
						</div>
						<div class="modal-body">
							<input type="text" class="form-control" id="menuItemNameChild"
								placeholder="Menu Item Name"/><br/>
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle parentDropDownButton" type="button"
									data-toggle="dropdown">
									Select Parent Item to add Child Item<span class="caret" id="selectParentMenuDropDownButton"></span>
								</button>
								<ul class="dropdown-menu" id="selectParentDropDown" style="height:auto;max-height:200px;overflow-x: hidden;">
								</ul>
							</div><br/>
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle childDropDownButton" type="button"
									data-toggle="dropdown">
									Select Page To Link to Child Menu Item <span class="caret" id="childMenuDropDownButton"></span>
								</button>
								<ul class="dropdown-menu" id="childMenuDropDown" style="height:auto;max-height:200px;overflow-x: hidden;">
								</ul>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal" onclick="javascript:addChild();">Add</button>
						</div>
					</div>
	
				</div>
			</div>
	
			<ul class="nav nav-tabs">
				<li class="active"><a href="#1" data-toggle="tab">Home Page</a></li>
				<li><a href="#2" data-toggle="tab" onclick="javascript:GetMenu();">Menu Manager</a></li>
				<li><a href="#3" data-toggle="tab" onclick="javascript:GetPageMenu();">Page Manager</a></li>
				<li><a href="#4" data-toggle="tab" onclick="javascript:GetTemplatesMenu();">Layout Manager</a></li>
				<li><a href="#5" data-toggle="tab" onclick="javascript:GetDocumentsDataTable();">Documents Manager</a></li>
				<li><a href="#6" data-toggle="tab">Widget Manager</a></li>
				<li><a href="#7" data-toggle="tab">Security Manager</a></li>
				<li><a href="#8" data-toggle="tab">Release Manager</a></li>
			</ul>
	
			<div class="tab-content ">
				<div class="tab-pane active" id="1">
					<h3>Home Page Management System</h3>
					<h6>Home Page Build Progress</h6>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="0"
							aria-valuemin="0" aria-valuemax="100" style="width: 0%" id="Home_Page_Build_Progress">
							<span class="sr-only">0% Complete</span>
						</div>
					</div>
					
					<div>
						<div id="headerImage" class="dashed">
							<table width="100%">
								<tr>
									<td width="50%">
										<input type="text" class="form-control" id="imageName" placeholder="Image Name" readonly="readonly"/>
									</td>
									<td width="50%" align="right">
										<table>
											<tr>
												<td width="80%">
													<div class="dropdown">
														<button class="btn btn-primary dropdown-toggle buttonHomeImageWidgetSelect" 
															type="button" 
															data-toggle="dropdown" 
															id="buttonHomeImageWidgetSelect">
															Select Page Top Level Image<span class="caret" id="loadHomeImageWidgetSelect"></span>
														</button>
														<ul class="dropdown-menu" id="listHomeImageWidgetSelect" 
															style="height: auto; max-height: 200px; overflow-x: hidden;">
															
														</ul>
													</div>
												</td>
												<td width="20%" align="right">
													<button type="Submit" class="btn btn-default" name="define" onclick="javascript:openThunmNailWidget(false);">Create</button>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<br/>
						<div id="headerText" class="dashed">
							<table width="100%">
								<tr>
									<td width="50%">
										<input type="text" class="form-control" id="titleText" placeholder="Title Text" onblur="javascript:updateHomeProgressBar();"/>
									</td>
								</tr>
							</table>
						</div>
						<br/>
						<div id="globalMenu" class="dashed">
							<table width="100%">
								<tr>
									<td width="50%">
										<input type="text" class="form-control" id="globalNavigationMenu" placeholder="Global Navigation Menu" readonly="readonly"/>
									</td>
									<td width="50%" align="right">
										<table>
											<tr>
												<td width="80%">
													<div class="dropdown">
														<button class="btn btn-primary dropdown-toggle buttonHomeGlobalNavigationWidgetSelect" 
																type="button" data-toggle="dropdown" 
																id="buttonHomeGlobalNavigationWidgetSelect">
															Select Navigation Menu<span class="caret" id="loadHomeGlobalNavigationWidgetSelect"></span>
														</button>
														<ul class="dropdown-menu" id="listHomeGlobalNavigationWidgetSelect" 
															style="height: auto; max-height: 200px; overflow-x: hidden;">
															
														</ul>
													</div>
												</td>
												<td width="20%" align="right">
													<button type="Submit" class="btn btn-default" name="save">Create</button>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<br/>
						<div id="carousel" class="dashed">
							<table width="100%">
								<tr>
									<td width="50%">
										<input type="text" class="form-control" id="carouselMenu" placeholder="Image Carousel" readonly="readonly"/>
									</td>
									<td width="50%" align="right">
										<table>
											<tr>
												<td width="80%">
													<div class="dropdown">
														<button class="btn btn-primary dropdown-toggle buttonHomeCarouselWidgetSelect" 
																type="button" data-toggle="dropdown" id="buttonHomeCarouselWidgetSelect">
															Select A Carousel Widget<span class="caret" id="loadHomeCarouselWidgetSelect"></span>
														</button>
														<ul class="dropdown-menu" id="listHomeCarouselWidgetSelect" 
															style="height: auto; max-height: 200px; overflow-x: hidden;">
															
														</ul>
													</div>
												</td>
												<td width="20%" align="right">
													<button type="Submit" class="btn btn-default" name="save" onclick="javascript:openThunmNailWidget(true);">Create</button>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<br/>
						<div id="layout" class="dashed">
							<table width="100%">
								<tr>
									<td width="50%">
										<input type="text" class="form-control" id="layoutTemplate" placeholder="Main Content Layout Template" readonly="readonly"/>
									</td>
									<td width="50%" align="right">
										<table>
											<tr>
												<td width="80%">
													<div class="dropdown">
														<button class="btn btn-primary dropdown-toggle buttonHomeLayoutWidgetSelect" 
																type="button" data-toggle="dropdown" id="buttonHomeLayoutWidgetSelect">
															Select Page Layout<span class="caret" id="loadHomeLayoutWidgetSelect"></span>
														</button>
														<ul class="dropdown-menu" id="listHomeLayoutWidgetSelect" 
															style="height: auto; max-height: 200px; overflow-x: hidden;">
															
														</ul>
													</div>
												</td>
												<td width="20%" align="right">
													<button type="Submit" class="btn btn-default" name="save">Create</button>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<br/>
						<div id="footer" class="dashed">
							<table width="100%">
								<tr>
									<td width="50%">
										<input type="text" class="form-control" id="footerMenu" placeholder="Footer Navigation Menu" readonly="readonly"/>
									</td>
									<td width="50%" align="right">
										<table>
											<tr>
												<td width="80%">
													<div class="dropdown">
														<button class="btn btn-primary dropdown-toggle buttonHomeFooterWidgetSelect" 
																type="button" data-toggle="dropdown" id="buttonHomeFooterWidgetSelect">
															Select A Footer Widget<span class="caret" id="loadHomeFooterWidgetSelect"></span>
														</button>
														<ul class="dropdown-menu" id="listHomeFooterWidgetSelect" 
															style="height: auto; max-height: 200px; overflow-x: hidden;">
															
														</ul>
													</div>
												</td>
												<td width="20%" align="right">
													<button type="Submit" class="btn btn-default" name="save">Create</button>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div><br/>
						<div align="right">
							<button type="Submit" class="btn btn-primary" name="saveHomePage" id="saveHomePage" onclick="javascript:saveHomePage();">Save</button>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="2">
					<h3>Menu Management System</h3>
					<h6>Menu Build Progress</h6>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="0"
							aria-valuemin="0" aria-valuemax="100" style="width: 0%" id="Menu_Build_Progress">
							<span class="sr-only">0% Complete</span>
						</div>
					</div>
					<div class="col-sm-4">
						<h4>Menu Navigation Tree</h4>
						<div id="treeview3" class="treeview"></div>
					</div>
					<div class="col-sm-6">
						<div id="treeview3" class="treeview">
							<input type="text" class="form-control" id="menuItemName"
								placeholder="Menu Item Name" onblur="javascript:updateMenuItemName(this);"/><br />
							<div class="dropdown">
								<button class="btn btn-primary dropdown-toggle menuDropDownButton" type="button"
									data-toggle="dropdown">
									Select Page To Link to Menu Item <span class="caret" id="menuDropDownButton"></span>
								</button>
								<ul class="dropdown-menu" id="menuDropDown" style="height:auto;max-height:200px;overflow-x: hidden;">
								</ul>
							</div>
							<div align="right">
								<br />
								<button type="Submit" class="btn btn-primary"
									name="addParent" id="addParent" onclick="javascript:addParent();">Add Parent Item</button>
								<button type="Submit" class="btn btn-primary"
									name="addChild" id="addChild" data-toggle="modal" data-target="#myModal" onclick="javascript:prepareAddChild();">Add Child Item</button>
									
								<button type="Submit" class="btn btn-primary"
									name="addPage" id="addPage" onclick="javascript:pageManager();">Create New Page</button>
								
								<button type="Submit" class="btn btn-primary disabled"
									name="deleteItem" id="deleteItem" data-toggle="confirmation" data-on-confirm="deleteMenuItem">Delete Menu Item</button>
								<br/>
								<br/>
							</div>
							<div align="right">
								<button type="Submit" class="btn btn-primary" name="previewItem" id="previewItem" onclick="javascript:previewMenu();">Preview</button>
								<button type="Submit" class="btn btn-primary disabled" name="saveItem" id="saveItem" onclick="javascript:updateMenu(this);">Save</button>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="3">
					<h3>Page Management System</h3>
					<h6>Page Build Progress</h6>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="0"
							aria-valuemin="0" aria-valuemax="100" style="width: 0%" id="Page_Build_Progress">
							<span class="sr-only">0% Complete</span>
						</div>
					</div>
					<div>
						<div class="panel panel-default">
							<div class="panel-heading">Edit / Create Page</div>
							<div class="panel-body">
								<div class="dropdown">
									<button
										class="btn btn-primary dropdown-toggle pageMgrMenuDropDownButton"
										type="button" data-toggle="dropdown">
										Select Page To Modify <span class="caret"
											id="pageMgrMenuDropDownButton"></span>
									</button>
									<ul class="dropdown-menu" id="pageMgrMenuDropDown"
										style="height: auto; max-height: 200px; overflow-x: hidden;">
									</ul>
								</div>
								<div>
									<br/>
									<button type="Submit" class="btn btn-primary" name="createPage"
										id="createPage" onclick="javascript:createPage();">Create Page</button>
								</div>
							</div>
						</div>
						
						<div class="panel panel-default">
							<div class="panel-heading">Page Modification Panel</div>
							<div class="panel-body" style="display:none;" id="pagePanelModification">
								<!-- PAGE NAME -->
								<fieldset class="scheduler-border">
	    							<legend class="scheduler-border">Name of Page</legend>
									<input type="text" class="form-control" id="pageName" placeholder="Page Name" onblur="javascript:updatePageProgressBar();"/>
								</fieldset>
								<!-- PAGE TITLE TEXT -->
								<fieldset class="scheduler-border">
	    							<legend class="scheduler-border">Title Text of Page</legend>
									<input type="text" class="form-control" name="pageTitleText" id="pageTitleText" placeholder="Title Text" onblur="javascript:updatePageProgressBar();"/>
								</fieldset>
								<!-- HEADER WIDGET -->
								<fieldset class="scheduler-border">
	    							<legend class="scheduler-border">Image Header Widget</legend>
									<div class="dropdown">
										<button class="btn btn-primary dropdown-toggle buttonImageWidgetSelect" type="button" data-toggle="dropdown" id="buttonImageWidgetSelect">
											Select Page Top Level Image<span class="caret" id="loadImageWidgetSelect"></span>
										</button>
										<ul class="dropdown-menu" id="listImageWidgetSelect" style="height: auto; max-height: 200px; overflow-x: hidden;">
											
										</ul>
									</div>
									<div align="right">
										<button type="Submit" class="btn btn-primary disabled" name="editImageWidget" id="editImageWidget">Edit Widget</button>
										<button type="Submit" class="btn btn-primary" name="createImageWidget" id="createImageWidget">Create Widget</button>
										<button type="Submit" class="btn btn-primary" name="addImage" id="addImage" onclick="javascript:documentManager();">Add Image</button>
									</div>
								</fieldset>
								<fieldset class="scheduler-border">
	    							<legend class="scheduler-border">Global Navigation Widget</legend>
									<!-- GLOBAL NAVIGATION WIDGET -->
									<div class="dropdown">
										<button class="btn btn-primary dropdown-toggle buttonGlobalNavigationWidgetSelect" type="button" data-toggle="dropdown" id="buttonGlobalNavigationWidgetSelect">
											Select Navigation Menu<span class="caret" id="loadGlobalNavigationWidgetSelect"></span>
										</button>
										<ul class="dropdown-menu" id="listGlobalNavigationWidgetSelect" style="height: auto; max-height: 200px; overflow-x: hidden;">
											
										</ul>
									</div>
									<div align="right">
										<button type="Submit" class="btn btn-primary disabled" name="editMenuWidget" id="editMenuWidget">Edit Widget</button>
										<button type="Submit" class="btn btn-primary" name="createMenuWidget" id="createMenuWidget">Create Widget</button>
									</div>
								</fieldset>
								<!-- CAROUSEL WIDGET -->
								<fieldset class="scheduler-border">
	    							<legend class="scheduler-border">Carousel Widget</legend>
									<div class="dropdown">
										<button class="btn btn-primary dropdown-toggle buttonCarouselWidgetSelect" type="button" data-toggle="dropdown" id="buttonCarouselWidgetSelect">
											Select A Carousel Widget<span class="caret" id="loadCarouselWidgetSelect"></span>
										</button>
										<ul class="dropdown-menu" id="listCarouselWidgetSelect" style="height: auto; max-height: 200px; overflow-x: hidden;">
											
										</ul>
									</div>
									<div align="right">
										<button type="Submit" class="btn btn-primary disabled" name="editCarouselWidget" id="editCarouselWidget">Edit Widget</button>
										<button type="Submit" class="btn btn-primary" name="createCarouselWidget" id="createCarouselWidget">Create Widget</button>
									</div>
								</fieldset>
								<!-- LAYOUT WIDGET -->
								<fieldset class="scheduler-border">
	    							<legend class="scheduler-border">Layout Widget</legend>
									<div class="dropdown">
										<button class="btn btn-primary dropdown-toggle buttonLayoutWidgetSelect" type="button" data-toggle="dropdown" id="buttonLayoutWidgetSelect">
											Select Page Layout<span class="caret" id="loadLayoutWidgetSelect"></span>
										</button>
										<ul class="dropdown-menu" id="listLayoutWidgetSelect" style="height: auto; max-height: 200px; overflow-x: hidden;">
											
										</ul>
									</div>
									<div align="right">
										<button type="Submit" class="btn btn-primary disabled" name="editLayoutWidget" id="editLayoutWidget">Edit Widget</button>
										<button type="Submit" class="btn btn-primary" name="createLayoutWidget" id="createLayoutWidget">Create Widget</button>
									</div>
								</fieldset>
								<!-- FOOTER WIDGET -->
								<fieldset class="scheduler-border">
	    							<legend class="scheduler-border">Footer Widget</legend>
									<div class="dropdown">
										<button class="btn btn-primary dropdown-toggle buttonFooterWidgetSelect" type="button" data-toggle="dropdown" id="buttonFooterWidgetSelect">
											Select A Footer Widget<span class="caret" id="loadFooterWidgetSelect"></span>
										</button>
										<ul class="dropdown-menu" id="listFooterWidgetSelect" style="height: auto; max-height: 200px; overflow-x: hidden;">
											
										</ul>
									</div>
									<div align="right">
										<button type="Submit" class="btn btn-primary disabled" name="editFooterWidget" id="editFooterWidget">Edit Widget</button>
										<button type="Submit" class="btn btn-primary" name="createFooterlWidget" id="createFooterWidget">Create Widget</button>
									</div>
								</fieldset>
								<!-- SAVE PAGE -->
								<div align="right">
									<br/>
									<button type="Submit" class="btn btn-primary"
										name="savePage" id="savePage" onclick="javascript:savePage(this);">Create / Save Page</button>
									
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="4">
					<h3>Layout Management System</h3>
					<h6>Layout Build Progress</h6>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="0"
							aria-valuemin="0" aria-valuemax="100" style="width: 0%" id="Template_Build_Progress">
							<span class="sr-only">0% Complete</span>
						</div>
					</div>
					<div>
						<div class="panel panel-default">
							<div class="panel-heading">Edit / Create Layout</div>
							<div class="panel-body">
								<div class="dropdown">
									<button
										class="btn btn-primary dropdown-toggle listLayoutForTemplatesWidgetButton"
										type="button" data-toggle="dropdown">
										Existing Template <span class="caret"
											id="listLayoutForTemplatesWidgetButtonLoad"></span>
									</button>
									<ul class="dropdown-menu" id="listLayoutForTemplatesWidgetSelect"
										style="height: auto; max-height: 200px; overflow-x: hidden;">
									</ul>
									<button class="btn btn-default" 
												id="confirmTemplateChange" 
												data-toggle="confirmation"
												data-on-confirm="getWidgetProxy"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
								</div>
								<div>
									<br/>
									<button type="Submit" class="btn btn-primary disabled"
										name="editTemplate" id="editTemplate" onclick="javascript:editTemplate();">Edit Template Widget</button>
									<button type="Submit" class="btn btn-primary" name="createTemplate"
										id="createTemplate" onclick="javascript:createTemplate();">Create Template Widget</button>
									<button type="Submit" class="btn btn-primary" name="hideCreateTemplateConfirm"
											id="hideCreateTemplateConfirm" 
											data-toggle="confirmation" 
											data-on-confirm="activateTemplateCreator"
											data-content="Your are currently modifying a template!"
											style="background-color:#ffffff;border-color:#ffffff;"></button>
	
									
								</div>
							</div>
						</div><br/>
						<div class="panel panel-default" style="display:none;" id="selectTemplate">
							<div class="panel-heading">
								<h4 class="panel-title">
		          					<a data-toggle="collapse" href="#collapseTemplates" id="simTempCollapse">Select Template Layout</a>
		        				</h4>
	        				</div>
							<div class="panel-body" id="collapseTemplates">
								<div class="container">
									<div class="row">
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(1)">
												<img src="./images/LayoutOne.png" alt="Layout One"/>
											</button>
											<button class="btn btn-default" 
												id="layout1" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(2)">
												<img src="./images/LayoutTwo.png" alt="Layout Two"/>
											</button>
											<button class="btn btn-default" 
												id="layout2" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(3)">
												<img src="./images/LayoutThree.png" alt="Layout Three"/>
											</button>
											<button class="btn btn-default" 
												id="layout3" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(4)">
												<img src="./images/LayoutFour.png" alt="Layout Four"/>
											</button>
											<button class="btn btn-default" 
												id="layout4" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
									</div><br/>
									<div class="row">
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(5)">
												<img src="./images/LayoutFive.png" alt="Layout One"/>
											</button>
											<button class="btn btn-default" 
												id="layout5" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(6)">
												<img src="./images/LayoutSix.png" alt="Layout Two"/>
											</button>
											<button class="btn btn-default" 
												id="layout6" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(7)">
												<img src="./images/LayoutSeven.png" alt="Layout Three"/>
											</button>
											<button class="btn btn-default" 
												id="layout7" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(8)">
												<img src="./images/LayoutEight.png" alt="Layout Four"/>
											</button>
											<button class="btn btn-default" 
												id="layout8" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
									</div><br/>
									<div class="row">
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(9)">
												<img src="./images/LayoutNine.png" alt="Layout One"/>
											</button>
											<button class="btn btn-default" 
												id="layout9" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(10)">
												<img src="./images/LayoutTen.png" alt="Layout Two"/>
											</button>
											<button class="btn btn-default" 
												id="layout10" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(11)">
												<img src="./images/LayoutEleven.png" alt="Layout Three"/>
											</button>
											<button class="btn btn-default" 
												id="layout11" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
										<div class="col-sm-3">
											<button class="btn btn-default" onclick="javascript:getTemplate(12)">
												<img src="./images/LayoutTwelve.png" alt="Layout Four"/>
											</button>
											<button class="btn btn-default" 
												id="layout12" 
												data-toggle="confirmation"
												data-on-confirm="proceedWithTemplate"
												data-singleton="true" 
												style="background-color:#ffffff;border-color:#ffffff;"></button>
										</div>
									</div>
								</div>
								
							</div>
						</div><br/>
						<div class="panel panel-default" style="display:none;" id="templateEditors">
							<div class="panel-heading">Template Layout Editors</div>
							<div class="panel-body" id="editors" onkeyup="javascript:runTemplateProgressBar();">
								
							</div>
							<div class="panel-body" id="controls" onkeyup="javascript:runTemplateProgressBar();">
								<h4>Layout Name</h4>
								<input type="text" class="form-control" id="layoutName" placeholder="Layout Name" style="width:50%;"/>
								<div align="right">
									<button type="Submit" class="btn btn-primary " name="deleteLayout" id="deleteLayout" onclick="javascript:deleteLayout();">Delete Layout</button>
									<button type="Submit" class="btn btn-primary " name="previewLayout" id="previewLayout" onclick="javascript:previewLayout();">Preview Layout</button>
									<button type="Submit" class="btn btn-primary " name="saveLayout" id="saveLayout" onclick="javascript:saveLayout();">Save Layout</button>
									<button type="Submit" 
											class="btn btn-primary" 
											name="hideSaveLayout"
											id="hideSaveLayout" 
											data-toggle="confirmation" 
											data-on-confirm="proceedSaveLayout"
											data-content="You have not modified all editors for this layout!"
											style="background-color:#ffffff;border-color:#ffffff;"></button>
									<button type="Submit" 
											class="btn btn-primary" 
											name="hidePreviewFullScreen"
											id="hidePreviewFullScreen" 
											data-toggle="modal" 
											data-target="#modal-fullscreen"
											style="background-color:#ffffff;border-color:#ffffff;"></button>
									<button type="Submit" 
											class="btn btn-primary" 
											name="hidePreviewFullScreenPreview"
											id="hidePreviewFullScreenPreview" 
											data-toggle="modal" 
											data-target="#modal-fullscreenPreview"
											style="background-color:#ffffff;border-color:#ffffff;"></button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="5">
					<h3>Document Management System</h3>
					
					<div class="panel panel-default">
						<div class="panel-heading">Document Upload Tool</div>
						<div class="panel-body">
							<div class="container">
								 <div class="row">
					        		<div class="col-sm-10 col-md-10 col-lg-10">
										<form id="fileupload" action="./upload" method="POST" enctype="multipart/form-data">
											<noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/"></noscript>
											<div class="row fileupload-buttonbar">
									            <div class="col-sm-10 col-md-10 col-lg-10">
									                <!-- The fileinput-button span is used to style the file input field as button -->
									                <span class="btn btn-success fileinput-button">
									                    <i class="glyphicon glyphicon-plus"></i>
									                    <span>Add files...</span>
									                    <input type="file" name="files[]" multiple>
									                </span>
									                <button type="submit" class="btn btn-primary start">
									                    <i class="glyphicon glyphicon-upload"></i>
									                    <span>Start upload</span>
									                </button>
									                <button type="reset" class="btn btn-warning cancel">
									                    <i class="glyphicon glyphicon-ban-circle"></i>
									                    <span>Cancel upload</span>
									                </button>
									                <button type="button" class="btn btn-danger delete">
									                    <i class="glyphicon glyphicon-trash"></i>
									                    <span>Delete</span>
									                </button>
									                <input type="checkbox" class="toggle">
									                <!-- The global file processing state -->
									                <span class="fileupload-process"></span>
									            </div>
									            <!-- The global progress state -->
									            <div class="col-lg-5 fileupload-progress fade">
									                <!-- The global progress bar -->
									                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
									                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
									                </div>
									                <!-- The extended global progress state -->
									                <div class="progress-extended">&nbsp;</div>
									            </div>
									        </div>
									        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
										</form>
									</div>
								</div>
							</div>
							<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
							    <div class="slides"></div>
							    <h3 class="title"></h3>
							    <a class="prev"></a>
							    <a class="next"></a>
							    <a class="close">x</a>
							    <a class="play-pause"></a>
							    <ol class="indicator"></ol>
							</div>
							<script id="template-upload" type="text/x-tmpl">
								{% for (var i=0, file; file=o.files[i]; i++) { %}
    								<tr class="template-upload fade">
        								<td>
            								<span class="preview"></span>
        								</td>
        								<td>
            								<p class="name">{%=file.name%}</p>
            								<strong class="error text-danger"></strong>
        								</td>
        								<td>
            								<p class="size">Processing...</p>
            								<div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        								</td>
        								<td>
            								{% if (!i && !o.options.autoUpload) { %}
                								<button class="btn btn-primary start">
                    								<i class="glyphicon glyphicon-upload"></i>
                    								<span>Start</span>
                								</button>
           	 								{% } %}
            								{% if (!i) { %}
                								<button class="btn btn-warning cancel">
                    								<i class="glyphicon glyphicon-ban-circle"></i>
                    								<span>Cancel</span>
                								</button>
            								{% } %}
        								</td>
   			 						</tr>
								{% } %}
							</script>
							<script id="template-download" type="text/x-tmpl">
								{% for (var i=0, file; file=o.files[i]; i++) { %}
    								<tr class="template-download fade">
        								<td>
            								<span class="preview">
                								{% 
													if(file.thumbnailUrl){
														if(file.video){ 
												%}
															<a 	href="javascript:getVideo('{%=file.url%}', '{%=file.name%}');" 
																title="{%=file.name%}">
																	<img src="{%=file.thumbnailUrl%}" height="60" width="60">
															</a>
												{% 
														}

														if(file.image){ 
												%}
															<a 	href="{%=file.url%}" 
																title="{%=file.name%}" 
																download="{%=file.name%}" data-gallery>
																	<img src="{%=file.thumbnailUrl%}" height="60" width="60">
															</a>
												{% 
														}
					
														if(file.word){ 
												%}
															<a 	href="{%=file.url%}" 
																title="{%=file.name%}" 
																download="{%=file.name%}" data-gallery>
																	<img src="{%=file.thumbnailUrl%}" height="60" width="60">
															</a>
												{% 
														}

														if(file.pdf){ 
												%}
															<a 	href="{%=file.url%}" 
																title="{%=file.name%}" 
																download="{%=file.name%}" data-gallery>
																	<img src="{%=file.thumbnailUrl%}" height="60" width="60">
															</a>
												{% 
														}
													}
												%}
            								</span>
        								</td>
        								<td>
            								<p class="name">
                								{% if (file.url) { %}
                    								<a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                								{% } else { %}
                    								<span>{%=file.name%}</span>
                								{% } %}
            								</p>
            								{% if (file.error) { %}
                								<div><span class="label label-danger">Error</span> {%=file.error%}</div>
            								{% } %}
        								</td>
        								<td>
            								<span class="size">{%=o.formatFileSize(file.size)%}</span>
        								</td>
        								<td>
            								{% if (file.deleteUrl) { %}
                								<button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    								<i class="glyphicon glyphicon-trash"></i>
                    								<span>Delete</span>
                								</button>
                								<input type="checkbox" name="delete" value="1" class="toggle">
            									{% } else { %}
                									<button class="btn btn-warning cancel">
                    									<i class="glyphicon glyphicon-ban-circle"></i>
                    									<span>Cancel</span>
                									</button>
            									{% } %}
        								</td>
    								</tr>
								{% } %}
							</script>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">Documents In System</div>
						<div class="panel-body">
							<div class="container">
								<div class="row">
					        		<div class="col-sm-11 col-md-11 col-lg-11">
									    <table id="documentsTBL" class="display" cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>Name</th>
													<th>Content Type</th>
													<th>Size</th>
													<th>Date Created</th>
													<th>Last Updated</th>
													<th>Actions</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="6">
					<h3>Widget Management System</h3>
					<div class="container">
					    <div class="row">
					        <div class="col-sm-3 col-md-3">
					            <div class="panel-group" id="accordion">
					                <div class="panel panel-default">
					                    <div class="panel-heading">
					                        <h4 class="panel-title">
					                             	<span class="glyphicon glyphicon-camera"></span><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Image Widgets</a>
					                        </h4>
					                    </div>
					                    <div id="collapseOne" class="panel-collapse collapse">
					                        <div class="panel-body" id="panelBody">
					                            <table class="table">
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-film"></span><a href="javascript:void();">Carousel</a>
					                                    </td>
					                                </tr>
					                                <tr>
					                                    <td>
					                                        <span class="fa fa-file-image-o"></span><a href="javascript:void();">Header Banners</a>
					                                    </td>
					                                </tr>
					                                <tr>
					                                    <td>
					                                        <span class="fa fa-file-image-o"></span><a href="javascript:void();">Embedded Image</a>
					                                    </td>
					                                </tr>
					                            </table>
					                        </div>
					                    </div>
					                </div>
					                <div class="panel panel-default">
					                    <div class="panel-heading">
					                        <h4 class="panel-title">
					                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-fullscreen">
					                            </span>Navigation Widgets</a>
					                        </h4>
					                    </div>
					                    <div id="collapseTwo" class="panel-collapse collapse">
					                        <div class="panel-body" id="panelBody">
					                            <table class="table">
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-menu-hamburger"></span><a href="javascript:void();">Global Navigation</a>
					                                    </td>
					                                </tr>
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-link"></span><a href="javascript:void();">Page Link</a>
					                                    </td>
					                                </tr>
					                            </table>
					                        </div>
					                    </div>
					                </div>
					                <div class="panel panel-default">
					                    <div class="panel-heading">
					                        <h4 class="panel-title">
					                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-th">
					                            </span>Layout Widgets</a>
					                        </h4>
					                    </div>
					                    <div id="collapseThree" class="panel-collapse collapse">
					                        <div class="panel-body" id="panelBody">
					                            <table class="table">
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-th-large"></span><a href="javascript:void();">Content Layout</a>
					                                    </td>
					                                </tr>
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-save"></span><a href="javascript:void();">Footer Layout</a> <span class="label label-info"></span>
					                                    </td>
					                                </tr>
					                            </table>
					                        </div>
					                    </div>
					                </div>
					                <div class="panel panel-default">
					                    <div class="panel-heading">
					                        <h4 class="panel-title">
					                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-headphones">
					                            </span>Media Widgets</a>
					                        </h4>
					                    </div>
					                    <div id="collapseFour" class="panel-collapse collapse">
					                        <div class="panel-body" id="panelBody">
					                            <table class="table">
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-facetime-video"></span><a href="javascript:void();">Embedded Video</a>
					                                    </td>
					                                </tr>
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-volume-up"></span><a href="javascript:void();">Embedded Audio</a>
					                                    </td>
					                                </tr>
					                            
					                            </table>
					                        </div>
					                    </div>
					                </div>
					                <div class="panel panel-default">
					                    <div class="panel-heading">
					                        <h4 class="panel-title">
					                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><span class="glyphicon glyphicon-paperclip">
					                            </span>Attachment Widgets</a>
					                        </h4>
					                    </div>
					                    <div id="collapseFive" class="panel-collapse collapse">
					                        <div class="panel-body" id="panelBody">
					                            <table class="table">
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-file"></span><a href="javascript:void();">PDF Documents</a>
					                                    </td>
					                                </tr>
					                                <tr>
					                                    <td>
					                                        <span class="glyphicon glyphicon-file"></span><a href="javascript:void();">Word Documents</a>
					                                    </td>
					                                </tr>
					                            
					                            </table>
					                        </div>
					                    </div>
					                </div>
					            </div>
					        </div>
					        <div class="col-sm-9 col-md-9">
					            <div class="well">
					                <h1>Available System Widgets</h1>
					                Create / Modify Web Widgets Here
					            </div>
					        </div>
					    </div>
					</div>
					
					
					
					
					
					
					
				</div>
				<div class="tab-pane" id="7">
					<h3>Security Management System</h3>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
				</div>
				<div class="tab-pane" id="8">
					<h3>Release Management System</h3>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
					<br/>
				</div>
			</div>
		</div>
	
		<hr></hr>
	
	</div>
	
</body>
</html>