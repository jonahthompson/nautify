$(document).on('turbolinks:load', function(){
  $('.edit_job').on('click', function(){
  	$(this).closest('.job_edit_form').find('.job_edit_field').attr('disabled', false);
  	$('.save_job').show();
  });
  $('.delete_job').on('ajax:success', function(){
  	$(this).closest('.job').remove();
  })
  $('.delete_contract').on('ajax:success', function(){
  	$(this).closest('.contract').remove();
  })
  $('.contract_submit').on('')
});