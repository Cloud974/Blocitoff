$(document).ready(function () {
  $('#calendar-toggle').on('click', function() {
    $('#calendar-div').fadeToggle()
    $('#calendar-div .date-field').focus();
    });
});

$(document).ready(function () {
  $(".glyphicon-calendar").on('click', function() {
    var taskElement = "#calendar-div-task-" + $(this).data('task-id');
    $(taskElement).fadeToggle();
    $(taskElement + " .date-field").focus();
  });
});
