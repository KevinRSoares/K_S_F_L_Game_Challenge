<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body" id='lvl'>...</div>
						
					</div>
					<button class="btn-outline-light btnComando"  onclick="iniciar()" alt="Botão Iniciar" title="Clique aqui para iniciar um novo jogo">Iniciar</button>
					<button class="btn-outline-light btnComando" id="btnPause" alt="Botão Pausar" title="Clique aqui para pausar o jogo">Pausar</button>
					<button class="btn-outline-light btnComando" id="btnReinicia" alt="Botão Reiniciar" title="Clique aqui para reiniciar o jogo">Reiniciar</button>

					<div class='placar'>
						<h3 class="text" id="text1">...</h3>
						<h3 class="text" id="text2">...</h3>
						<h3 class="text" id="text3">...</h3>
					</div>
					
					<h2 id='status'>....</h2>
					<div class="fb-share-button compartilhar" data-href="http://sc.senai.br/" 
						data-layout="button" data-size="large" data-mobile-iframe="false"><a target="_blank" 
						href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" 
						class="fb-xfbml-parse-ignore">Compartilhar</a>
					</div>
										
				</div>
				<div class="col-lg-8">
					<div class="tabuleiro">
						<?php
							$k =  1;
							for($i = 1;$i <= 3;$i++){
								echo "<div class='row'>";
									for($j = 1;$j <= 3;$j++){
										echo "<div class='col-lg-4'>
												<div class='btn quadrado".$k."' id='quadrado".$k."' onclick='apertou(".$k.")' ></div>
											  </div>";
										$k++;										
									}
								echo "</div>";
							}
						?>
						
				</div>
			</div>
				
		</div>
		
		
		<audio id="do" src="Content/audio/do.wav"></audio>
		<audio id="fa" src="Content/audio/fa.wav"></audio>
		<audio id="la" src="Content/audio/la.wav"></audio>
		<audio id="mi" src="Content/audio/mi.wav"></audio>
		<audio id='audio2' src="Content/audio/errou.mp3"></audio>
		<audio id='audio'>
			<source src="audio/som.mp3" type="Content/audio/mp3" >
			<source src="audio/som.mp3" type="Content/audio/mp3" >
		</audio>			    
</div>
<!--<div class="fb-share-button compartilhar" data-href="http://sc.senai.br/" data-layout="button" data-size="large" data-mobile-iframe="false">
	<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Compartilhar</a>
</div>-->	