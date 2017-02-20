$(document).on('turbolinks:load', function () {
    $("#location_input").keyup(function() {
    var searchLocation = $("#location_input").val();
    console.log(searchLocation);
  })
});