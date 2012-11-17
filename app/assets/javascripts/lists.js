$(document).ready(function(){
	$('.list_record_check').click(function(){
		var checked = $(this).is(':checked');
		var r_id = $(this).data('record-id');
		$.post('/records/'+r_id+'/check',
			{checked: checked},
			function() {
				console.log('ok');
			}
		)
	})
})