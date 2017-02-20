$(document).on('turbolinks:load', function () {
  var aPIKey = $('#API_key').val();
    $('#location_input').keyup(function() {
    var searchLocation = $('#location_input').val();
    var url = 'http://index1.homeflow.co.uk/places?api_key=' + aPIKey + '&search[name]=' + searchLocation
    console.log(url);
  })
});