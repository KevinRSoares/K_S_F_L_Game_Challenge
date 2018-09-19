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
	
	// //variáveis locais
	// var $form = $(this);

	// //Vamos selecionar e armazenar todos os cmapos do formulário para operações com eles
	// var $inputs = $form.find("input, select, button, textarea");

	// //Vamos serializar o formulário
	// var serializedData = $form.serialize();
	// serializedData+="&operacao=AdicionarUsuario"

	// //Vamos desabilitar os inputs durante a requisição para não deicar mandar várias seguidas
	// // // OBS: N[os desabilitamos os campos depois de serializar os dados
	// $inputs.prop("disabled", true);

	//Vamos mandar a requisição
	request = $.ajax({
		url: "Controller/RankingController.php",
		type: "get"
	});

	// Callback para ser chamado quando ocorre o sucesso
	request.done(function (response, textStatus, jqXHR){

		var response = $.parseJSON(response);
		if (!response.success) { //Se deu alguma mensagem de erro
			// if (response.erros.email) {
			// 	$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros.email + '</div>')
			// 	.fadeIn(1000).html();
			// }
			// if (response.erros.senha) {
			// 	$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros.senha + '</div>')
			// 	.fadeIn(1000).html();
			// }
			// if (response.erros.nome) {
			// 	$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros.nome + '</div>')
			// 	.fadeIn(1000).html();
			// }
			// if (response.erros.apelido) {
			// 	$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros.apelido + '</div>')
			// 	.fadeIn(1000).html();
			// }
		}
		else {
				console.log(response);
				k = 1;
				for (i in response.ranking) {
					if(i >= "3" & i <= "5"){
						$('#tabelaR').append('<tr><td>' + response.ranking[i].NickR + '</td><td>' + response.ranking[i].PontR + '<img class="navbar-brand" src="Content/img/lugar'+(k)+'.png" height="35px"></td></tr>');
					}else{
						$('#tabelaR').append('<tr><td>' + response.ranking[i].NickR + '</td><td>' + response.ranking[i].PontR + '</td></tr>');
					}
					k = k+1;
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