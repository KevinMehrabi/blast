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
//= require underscore
//= require gmaps/google
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

var places, userPlace, $input = $("#place");
var autocomplete = new google.maps.places.SearchBox($input[0]);

google.maps.event.addListener(autocomplete, 'places_changed', function() {
 var places = autocomplete.getPlaces();
 if (places.length == 0)
  return;

 firstPlace = places[0];
 alert(firstPlace.place_id);
});
