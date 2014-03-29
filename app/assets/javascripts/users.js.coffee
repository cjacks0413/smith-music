# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#cal-view").live('click', function(e){
  $("#progress-view").toggle();
});

$(document).ready ->
    $('#event-button').click ->
        $('.event-cell').toggle()