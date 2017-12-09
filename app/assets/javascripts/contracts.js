$(document).on('turbolinks:load', function(){
    $('.contract_form').on('submit', function(){
    	window.contract_section = $(this).attr('data-reference-id');
    });
    $(document).on('ajax:success', '.delete_contract', function() {
	    $(this).closest('.contract').remove();
	  });
}); 