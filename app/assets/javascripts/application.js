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
//= require jquery_ujs
//= require turbolinks
//= require twitter/bootstrap
//= require googlemaps
//= require_tree .

function setBodyMinHeight() {
	// var ele =document.getElementByTagName('body');
	var ele =document.body;
	var windowHeight =window.outerHeight;
	ele.style.minHeight =windowHeight+'px';
}
window.onresize =function() {
	setBodyMinHeight();
};
// initialize on first load
var map;

$(document).ready(function() {
	setBodyMinHeight();
  //google maps stuff
  map = new google.maps.Map(document.getElementById('map'), {
    disableDefaultUI: true,
    center: {lat: 37.664372, lng: -121.882163},
    zoom: 2,
    styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
  });
  $.getJSON( "/cities", function( data ) {
    $.each (data, function(key,value){
      console.log(value.name + value.lat + value.long);
      marker_title = value.name;
      var marker = new google.maps.Marker({
        position: {lat:value.lat, lng:value.long},
        map: map,
        title: marker_title,
        url: "/cities/" + value.slug})
        google.maps.event.addListener(marker, "click", function() {
                      location.assign(marker.url);
          });
      });

    });


});
