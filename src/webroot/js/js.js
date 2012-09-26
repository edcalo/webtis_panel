$(document).ready(function() {
	/*
	$('#btn_cu').click(function(){
		$('#contact_us').slideDown('slow');
		//$('#contact_us').show('slow');
		$('#btn_cu').hide();
		$('#btn_cu_close').show();
	});
	$('#btn_cu_close').click(function(){
		$('#contact_us').slideUp('slow');
		//$('#contact_us').hide('slow');
		$('#btn_cu').show();
		$('#btn_cu_close').hide();
	});
	
	$('#contact_submit').click(function(){
		if ($("#contact_form").validate().form() == true){
			$('#opacue').show();
			var dat=$.param($("#contact_form .text"));
			$.ajax({
				url: "<?php echo site_url('form/contact_form')?>",
				type: "POST",
				dataType: "html",
				timeout: 30000,
				data: dat,
				success: function(msg){
					$('#opacue').hide();
					if (msg!='') {
						$('#contact_success').html('');
						$('#contact_error').html(msg);
					}else {
						$('#contact_success').html('<p class="tcenter">success</p>');
						$('#contact_error').html('');
						//$("#contact_form").hide();	
					}

				},
				error: function(){
					$('#opacue').hide();
					$('#contact_success').html('');
					$('#contact_error').html('Saturated system. Please try again later.');
				}
			});
		}
	});
	$('#contact_cancel').click(function(){
		$('#contact_us').slideUp('slow');
		$('#btn_cu').show();
		$('#btn_cu_close').hide();
	});
	*/
});

