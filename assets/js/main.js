// Generated by CoffeeScript 1.6.3
(function(){$(document).ready(function(){var e,t,n,r;$("a").each(function(){var e;e=new RegExp("/"+window.location.host+"/");if(!e.test(this.href))return $(this).click(function(e){e.preventDefault();e.stopPropagation();return window.open(this.href,"_blank")})});n=$(".post-content").articleWordCount();e=$.timeToRead(n);e===1?t="minute":t="minutes";r=""+n+" words ≅ "+e+" "+t;return $("#wordcount").html(r)})}).call(this);