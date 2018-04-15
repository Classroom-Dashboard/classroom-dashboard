// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//=require rails-ujs
//=require jquery
//=require jquery_ujs
//=require jquery-fileupload/basic
//=require bootstrap-sprockets
//=require dropzone
//=require_tree .

$(document).ready(function(){
    var stars=800;
    var $stars=$(".stars");
    var r=800;
    for(var i=0;i<stars;i++){
      var $star=$("<div/>").addClass("star");
      $stars.append($star);
    }
    $(".star").each(function(){
      var cur=$(this);
      var s=0.2+(Math.random()*1);
      var curR=r+(Math.random()*300);
      cur.css({
        transformOrigin:"0 0 "+curR+"px",
        transform:" translate3d(0,0,-"+curR+"px) rotateY("+(Math.random()*360)+"deg) rotateX("+(Math.random()*-50)+"deg) scale("+s+","+s+")"

      })
    })
  })
