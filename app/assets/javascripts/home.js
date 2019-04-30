$(document).ready(function() {
  setTimeout(function() {
    $(".alert").fadeOut("slow")
  }, 1000);
  
  $(".form-control").change(function() {
    $('#task-form').submit();
  });
});