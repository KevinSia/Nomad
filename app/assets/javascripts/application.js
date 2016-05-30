// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require cocoon
//= require masonry.pkgd
//= imagesloaded.pkgd.min
//= classie
//= colorfinder-1.1
//= gridScrollFx
//= require modernizr.custom
//= require bootstrap-sprockets
//= require pickadate/picker
//= require pickadate/picker.date
//= require_tree .

jQuery(document).ready(function($){
    $('.hero-text').typeIt({
        content : 'I am a human Web Developer',
        speed: 100,
        removeAt: 13,
        deleteNo: 6,
        callback: function(){console.log('Completed')}
    });
});
