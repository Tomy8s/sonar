$(document).on('turbolinks:load', function () {
  var aPIKey = $('#API_key').val();
    $('#location_input').keyup(function() {
    var searchLocation = $('#location_input').val();
    var url = '/properties/property_search/?property_id=' + searchLocation
    $.ajax({url: url}).done(function(res){
      var property = res.property
      console.log(res);
      $('main').html(
        '<div id="results"><div id="photos"></div>' + 
        '<p clas="short-desc">' + property.short_description + '</p>' +
        '<p class="postcode">Postcode: ' + property.postcode + '</p>' +
        '<p class="price">' + property.price + '</p>' +
        '<iframe class="map" src="https://www.google.com/maps/embed/v1/place?key=' + res.maps_key + '&q=' + property.postcode + '"></iframe>' +
        '</div>'
      );
      if (property.photos.length > 0) {
        for(var i = 0; i < property.photos.length; i++) {
          $('#photos').append('<img src="http://mr0.homeflow.co.uk/' + property.photos[i] + '">');
        };
      };
    });
  })
});