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
//= require_tree .

var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(setLocation);
        console.log("just got geolocation");

    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
        console.log("can't get geolocation");
    }
}

function setLocation(position){
     $.ajax({
                  url: '/setloc',
                  method: 'PATCH',
                  data: {latitude: position.coords.latitude, longitude: position.coords.longitude}
                }).done(function() {

            })
}


function initialize() {
var map = new google.maps.Map(document.getElementById('map-canvas'), {
mapTypeId: google.maps.MapTypeId.ROADMAP
});
var input = /** @type {HTMLInputElement} */(document.getElementById('pac-input'));
var searchBox = new google.maps.places.SearchBox((input));
}
google.maps.event.addDomListener(window, 'load', initialize);
