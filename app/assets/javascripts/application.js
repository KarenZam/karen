// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= bootstrap.min
//= count
//= fittext
//= gridGallery
//= jquery.appear
//= jquery.flexslider-min
//= parallax
//= respond.min
//= retina
//= rotate-patch
//= scripts
//= smooth-scrool
//= YTPlayer
//= custom.modernizr
//= require home
//= require_tree .

$('document').ready(function(){
        $('#grid').grid({
                columnWidth: 'auto', 
                captionType: 'grid-fade', 
                imagesToLoad: 5, 
                imagesToLoadStart: 15, 
                isFitWidth: true,  
                horizontalSpaceBetweenThumbnails: 5, 
                verticalSpaceBetweenThumbnails: 5, 
                columnWidth: 'auto', 
                columnMinWidth: 200, 
                caption: true, 
                lightBoxSpeedFx: 500
        });
});