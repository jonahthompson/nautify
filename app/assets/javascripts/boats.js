$(document).on('turbolinks:load', function(){
  $('.edit_boat').on('click', function(){
  	$(this).closest('.boat_edit_form').find('.boat_edit_field').attr('disabled', false);
  	$('.save_boat').show();
  });
  $('.delete_boat').on('ajax:success', function(){
  	$(this).closest('.boat').remove();
  });
  $('.delete_contract').on('ajax:success', function(){
  	$(this).closest('.contract').remove();
  });
});