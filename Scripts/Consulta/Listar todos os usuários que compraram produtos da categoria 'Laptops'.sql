SELECT DISTINCT Usuario.ID, Usuario.EMAIL
FROM Usuario
JOIN HistoricoUsuario ON Usuario.ID = HistoricoUsuario.ID_USUARIO
JOIN Pedido ON HistoricoUsuario.ID_PEDIDO = Pedido.ID
JOIN Carrinho ON Pedido.ID_CARRINHO = Carrinho.ID
JOIN Produto ON Carrinho.ID_PRODUTO = Produto.ID
JOIN CategoriaProduto ON Produto.ID_CATEGORIA = CategoriaProduto.ID
WHERE CategoriaProduto.NOME = 'Laptops';

-- \(\pi_{ID, EMAIL}(\sigma_{NOME='Laptops'}(Usuario \bowtie_{Usuario.ID = HistoricoUsuario.ID_USUARIO} HistoricoUsuario \bowtie_{HistoricoUsuario.ID_PEDIDO = Pedido.ID} Pedido \bowtie_{Pedido.ID_CARRINHO = Carrinho.ID} Carrinho \bowtie_{Carrinho.ID_PRODUTO = Produto.ID} Produto \bowtie_{Produto.ID_CATEGORIA = CategoriaProduto.ID} CategoriaProduto))\)