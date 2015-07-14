$(document).ready(function(){
  function initialize() {
  var map = new google.maps.Map(document.getElementById('map-canvas'), {
  mapTypeId: google.maps.MapTypeId.ROADMAP
  });
  var input = /** @type {HTMLInputElement} */(document.getElementById('pac-input'));
  var searchBox = new google.maps.places.SearchBox((input));
  }
  google.maps.event.addDomListener(window, 'load', initialize);
})
