$('.custom-file-input').on('change',function(){
	var fileName = $(this).val();

	$('#labelFile').html(fileName);	
})

	$("#formArquivo").on("submit", function(event){
			   
		event.preventDefault();

		var file_data = $('#inputFile').prop('files')[0];   
		var form_data = new FormData();                  
		form_data.append('file', file_data);
		alert(form_data); 

		$.ajax({
			url: 'cadastrarPost.php', 
			dataType: 'text',  
			cache: false,
			contentType: false,
			processData: false,
			data: form_data,                         
			type: 'post',
			success: function(php_script_response){
			alert(php_script_response);
			$('#labelFile').html("Nenhum arquivo selecionado");
			$("#inputFile").val("");


			}
		});
	});