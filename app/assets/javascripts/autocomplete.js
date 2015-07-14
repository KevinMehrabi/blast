$(document).ready(function(){
  function initialize() {
    var input = (document.getElementById('pac-input'));
    var searchBox = new google.maps.places.SearchBox((input));
    }
    google.maps.event.addDomListener(window, 'load', initialize);
})
