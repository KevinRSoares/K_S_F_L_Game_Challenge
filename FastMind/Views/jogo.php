<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body" id='lvl'>...</div>
						
					</div>
					<button id='iniciar' class="btn-outline-light btnComando"  onclick="iniciar()" alt="Botão Iniciar" title="Clique aqui para iniciar um novo jogo">Iniciar</button>
					<button id='pause' class="btn-outline-light btnComando" onclick="pausar()" alt="Botão Pausar" title="Clique aqui para pausar o jogo">Pausar</button>
					<button id='reiniciar' class="btn-outline-light btnComando" onclick="reiniciar()" alt="Botão Reiniciar" title="Clique aqui para reiniciar o jogo">Reiniciar</button>
					<h2 id='level'>Nível: 0 </h2>
					<h2 id='status'>....</h2>
					<div id='facebook'>
						<div  class="fb-share-button compartilhar" data-href="http://35.196.97.121/FastMind/index.php?page=Login" data-layout="button" data-size="large" data-mobile-iframe="false">
							<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Compartilhar</a>
						</div>
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
		<audio id='audio' src="Content/audio/som.mp3"></audio>			    
</div>
<!--<div class="fb-share-button compartilhar" data-href="http://sc.senai.br/" data-layout="button" data-size="large" data-mobile-iframe="false">
	<a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Compartilhar</a>
</div>-->	