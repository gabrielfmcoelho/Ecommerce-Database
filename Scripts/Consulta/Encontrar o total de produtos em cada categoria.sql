SELECT CategoriaProduto.NOME, COUNT(Produto.ID) AS TotalProdutos
FROM CategoriaProduto
LEFT JOIN Produto ON CategoriaProduto.ID = Produto.ID_CATEGORIA
GROUP BY CategoriaProduto.NOME;

-- \(\pi_{NOME, TotalProdutos}(\gamma_{COUNT(ID)}(\sigma_{\top}(CategoriaProduto) \ltimes_{\text{agrupar por NOME}} Produto))\)

