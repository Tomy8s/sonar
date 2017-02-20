$(document).on('turbolinks:load', function () {
  var aPIKey = $('#API_key').val();
    $('#location_input').keyup(function() {
    var searchLocation = $('#location_input').val();
    var url = '/properties/search/?location=' + searchLocation
    console.log(url);
    $.ajax({url: url}).done(function(results){
      console.log(results);
      // var locations = results.result.locations
      // // console.log(locations);
      // for(var i = 0; i < locations.elements.length; i++) {
      //   console.log(locations.elements[i].place_id);
      // };
    });
  })
});