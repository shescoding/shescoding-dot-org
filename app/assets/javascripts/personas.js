$(function() {
  $(".ui-woman-options").click(function() {
    $(".ui-woman-question2").toggle();
  });
});

$(function() {
  $(".ui-woman-options2").click(function() {
    $(".ui-woman-question3").toggle();
  });
});

$(function() {
  $(".ui-company-options").click(function() {
    $(".ui-company-question2").toggle();
  });
});

$(function() {
  $(".ui-company-options2").click(function() {
    $(".ui-company-question3").toggle();
  });
});

$(function() {
  $(".ui-supporter-options").click(function() {
    $(".ui-supporter-question2").toggle();
  });
});

$(function() {
  $(".ui-supporter-options2").click(function() {
    $(".ui-supporter-question3").toggle();
  });
});

$(function(){
  $(".dropdown-menu").on('click', 'li', function(){
     $(".btn:first-child").text($(this).text());
     $(".btn:first-child").val($(this).text());
  });
});
