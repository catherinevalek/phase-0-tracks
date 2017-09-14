$(document).ready(function() {
  $('button').on('click', function() {
    var dollar_amount = $(this).closest('.meal').data('price');
    $(this).closest('.meal').append(dollar_amount);
    $(this).remove();
  });
});
