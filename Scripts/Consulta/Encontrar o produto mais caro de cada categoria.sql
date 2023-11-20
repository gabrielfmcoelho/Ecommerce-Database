SELECT CategoriaProduto.NOME, MAX(Produto.PRECO) AS ProdutoMaisCaro
FROM CategoriaProduto
JOIN Produto ON CategoriaProduto.ID = Produto.ID_CATEGORIA
GROUP BY CategoriaProduto.NOME;

-- \(\pi_{NOME, ProdutoMaisCaro}(\gamma_{MAX(PRECO)}(Produto \bowtie_{CategoriaProduto.ID = Produto.ID_CATEGORIA} CategoriaProduto))\)

