$(document).ready(function() {
  console.log("ready");
  $(".todo-edit").hide();
  
  $(".todo-show").click(function () {
    console.log("todo-show clicked");
    $(".todo-show").hide();
    $(".todo-edit").show();
  });
  
  $(".todo-edit").click(function () {
    console.log("todo-edit clicked");
    $(".todo-show").show();
    $(".todo-edit").hide();
  });
});