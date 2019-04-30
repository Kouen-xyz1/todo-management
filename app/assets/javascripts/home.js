$(document).ready(function() {
  setTimeout(function() {
    $(".alert").fadeOut("slow")
  }, 1000);
  
  $(".form-control").change(function() {
    $('#task-form').submit();
  });
  
  setToday()
  
  $("#new-task").click(function() {
    $("#new-task-form").submit();
  });
});

function setToday() {
  console.log("setToday")
  var today = new Date();
  today.setDate(today.getDate());
  var yyyy = today.getFullYear();
  var mm = ("0"+(today.getMonth()+1)).slice(-2);
  var dd = ("0"+today.getDate()).slice(-2);
  var todayStr = yyyy+'-'+mm+'-'+dd;
  $('.today').attr('value', todayStr);
}