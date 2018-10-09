$( document ).ready(function() {
	// Variável para guardar o request
	var request;

	// Bind da função de submit do nosso formulário
	$("#formPesquisa").submit(function(event){

		//Não deixa que o POST default seja acionado
		event.preventDefault();

		//Cancelando qualquer request pendente
		if (request) {
			request.abort();
		}
		
		//Limpo as mensagens
		$("#divMensagem").empty();
		
		//variáveis locais
		var $form = $(this);

		//Vamos selecionar e armazenar todos os cmapos do formulário para operações com eles
		var $inputs = $form.find("input, select, button, textarea");

		//Vamos serializar o formulário
		var serializedData = $form.serialize();

		//Vamos desabilitar os inputs durante a requisição para não deicar mandar várias seguidas
		// OBS: N[os desabilitamos os campos depois de serializar os dados
		$inputs.prop("disabled", true);

		//Vamos mandar a requisição
		request = $.ajax({
			url: "Controller/AdminController.php",
			type: "post",
			data: serializedData
		});

		// Callback para ser chamado quando ocorre o sucesso
		request.done(function (response, textStatus, jqXHR){
			var response = $.parseJSON(response);
			if (!response.success) { //Se deu alguma mensagem de erro
				if (response.erros.email) {
					$('#divMensagem').append('<div class="alert alert-danger" role="alert">' + response.erros.email + '</div>')
					.fadeIn(1000).html();
				}
			}
			else {
				console.log(response);
				for (i in response.Admin) {
					if(i<9){
						$('#tabelaA').append('<tr><td class="col-3 text-Left">' + response.Admin[i].DescA + '</td><td class="col-3">' + response.Admin[i].DtLogIniA + '</td><td class="col-1 text-left">' + response.Admin[i].TipLogA + '</td></tr>');
					}
				}	
				$('#tabelaB').append('<nav aria-label="Navegação de página exemplo">  <ul class="pagination">    <li class="page-item">      <a class="page-link" href="#" aria-label="Anterior">        <span aria-hidden"true">&laquo;</span>        <span class="sr-only">Anterior</span>      </a>    </li>    <li class="page-item"><a class="page-link" href="#">1</a></li>    <li class="page-item"><aclas="page-link" href="#">2</a></li>    <li class="page-item"><a class="page-link" href="#">3</a></li>    <li class="page-item">      <a class="page-link" href="#" aria-label="Próximo">        <span aria-hidden="true">&raquo;</span>        <span class="sr-only">Próximo</span>      </a>    </li>  </ul></nav>');	
				// <tr>
                //     <td class="col-3 text-left">Teste</td>
                //     <td class="col-2">Teste</td>
                //     <td class="col-2 text-right">Teste</td>
                // </tr>		
			}
		});

		// Callback para ser chamado em caso de falha
		request.fail(function (jqXHR, textStatus, errorThrown){
			$('#divMensagem').append('<div class="alert alert-danger" role="alert">Erro ao buscar os dados</div>')
					.fadeIn(1000).html();
		});

		// Callback que será chamado sempre depois da requisição (mesmo que ocorra falaha ou sucesso)
		request.always(function () {
			//Habilitamos os campos
			$inputs.prop("disabled", false);
		});

	});
});