--Views
	--Views Ranking Geral
		Create View RankingGeral as 
		Select NicUsu as 'NickName',max(PonPar) as 'Pontuacao' from Usuario
		right Join partida using(CodUsu)
		group by CodUsu order by max(PonPar) desc limit 10;
	--Views Ranking Geral	
	--Views Relatório Log
		Create View relatorio_log as 
		Select Deslog as 'Descrição Log', DatHorLog as 'Data e hora do Log', TipLog as 'Tipo do Log' from log;	
	--Views Relatório Log
--Views