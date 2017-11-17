$(document).ready(function () {
  $('#note-toggle').on('click', function() {
    $('#note-div').fadeToggle()
    $('#note-div .task-note-field').focus();
    });
});

$(document).ready(function () {
  $(".glyphicon-book").on('click', function() {
    var taskElement = "#note-div-task-" + $(this).data('task-id');
    $(taskElement).fadeToggle();
    $(taskElement + " .task-note-field").focus();
  });
});
