$(document).on('turbolinks:load', function(){
  $('.edit_boat').on('click', function(){
  	$(this).closest('.boat_edit_form').find('.boat_edit_field').attr('disabled', false);
  });
});