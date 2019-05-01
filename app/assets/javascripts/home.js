$(document).ready(function() {
  setTimeout(function() {
    $(".alert").fadeOut("slow")
  }, 1000);
  
  console.log("ready");
  $(".form-control").change(function() {
    $(this).parent('div').parent('form').submit();
  console.log("change");
  });
});