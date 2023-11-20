SELECT Pedido.ID, Usuario.EMAIL, Pedido.VALOR, Pedido.DATA
FROM Pedido
JOIN HistoricoUsuario ON Pedido.ID_CARRINHO = HistoricoUsuario.ID_PEDIDO
JOIN Usuario ON HistoricoUsuario.ID_USUARIO = Usuario.ID
WHERE Pedido.DATA = '2023-02-20 15:45:00';


-- \(\pi_{NOME, ProdutoMaisCaro}(\gamma_{MAX(PRECO)}(Produto \bowtie_{CategoriaProduto.ID = Produto.ID_CATEGORIA} CategoriaProduto))\)

