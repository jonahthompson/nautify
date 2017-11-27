$(document).on('turbolinks:load', function(){
  $('.edit_job').on('click', function(){
  	$(this).closest('.job_edit_form').find('.job_edit_field').attr('disabled', false);
  	$('.save')
  });
});