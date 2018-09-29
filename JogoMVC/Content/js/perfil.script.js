$( document ).ready(function() {
	// Variável para guardar o request
	var request;

	// Bind da função de submit do nosso formulário
	//Não deixa que o POST default seja acionado
	//event.preventDefault();

	//Cancelando qualquer request pendente
	if (request) {
		request.abort();
	}
	
	//Limpo as mensagens
	$("#divMensagem").empty();

	// //Vamos serializar o formulário
	var serializedData = "&UsuCod="+$("#CodUsu").text();

	//Vamos mandar a requisição
	request = $.ajax({
		url: "Controller/PerfilController.php",
		type: "POST",
		data: serializedData
	});

	// Callback para ser chamado quando ocorre o sucesso
	request.done(function (response, textStatus, jqXHR){

		var response = $.parseJSON(response);
		if (!response.success) { //Se deu alguma mensagem de erro
				$('#divMensagem').append('<div class="alert alert-danger" role="alert">Error ao Trazer Informações do usuário!</div>')
				.fadeIn(1000).html();
		}
		else {
				console.log(response);
				for (i in response.perfil) {					
					$('#inf').append('<p class="card-text"> Nome: ' + response.perfil[i].NomeP + '</p>');
					$('#inf').append('<p class="card-text"> Nick: ' + response.perfil[i].NickP + '</p>');
					$('#inf').append('<p class="card-text"> Email: ' + response.perfil[i].EmailP + '</p>');
					$('#inf').append('<p class="card-text"> Data de Nascimento: ' + response.perfil[i].DtNascP + '</p>');
				}	
				for (i in response.pontuacao) {					
					$('#Pontuacao').append('<p>' + response.pontuacao[i] + '</p>');
				}							
				//.fadeIn(1000).html();
				//redirect("index.php?page=Jogo");
		}
	});

	// Callback para ser chamado em caso de falha
	request.fail(function (jqXHR, textStatus, errorThrown){
		$('#divMensagem').append('<div class="alert alert-danger" role="alert">Erro ao enviar os dados</div>')
				.fadeIn(1000).html();
	});

	// Callback que será chamado sempre depois da requisição (mesmo que ocorra falaha ou sucesso)
	// request.always(function () {
	// 	//Habilitamos os campos
	// 	$inputs.prop("disabled", false);
	// });

});