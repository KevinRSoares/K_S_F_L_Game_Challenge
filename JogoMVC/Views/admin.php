    <div class="container">
    <div class="card admin">
        <div class="card-header">
            <form id="formPesquisa">
                <div class="form-row">
                    <div class="col-5">
                        <input type="text" class="form-control" placeholder="Descrição" id="inputDescricao" name="inputDescricao">
                    </div>
                    <div class="col-2">
                        <input type="date" class="form-control" placeholder="Descrição" id="inputDataIni" name="inputDataIni">
                    </div>
                    <div class="col-2">
                        <input type="date" class="form-control" placeholder="Descrição" id="inputDataFim" name="inputDataFim">
                    </div>                                
                    <div class="col-2">
                        <select class="form-control"  id="selectTipo" name="selectTipo">
                            <option value="T">Tipo</option>
                            <option value="A">Acesso</option>
                            <option value="E">Erro</option>
                            <option value="C">Cadastro</option>
                            <option value="D">Deleção</option>
                            <option value="W">Aviso</option>
                            <option value="P">Partidas</option>                        
                        </select>
                    </div>
                    <button type="submit" class="btn btn-outline-dark" alt="Botão Filtrar" title="Clique aqui para filtrar as informações dos Logs do sistema">Filtrar</button>
                </div>
            </form>
        </div>
        <div class="card-body">
            <div class="form-row">
            <table class='table' id='tabelaA'>
            </table>
            </div>
        </div>
    </div>
</div>