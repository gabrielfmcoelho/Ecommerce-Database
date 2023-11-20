SELECT Produto.NOME, Produto.PRECO
FROM Produto
ORDER BY Produto.PRECO DESC;


-- \(\pi_{NOME, PRECO}(\sigma_{\top}(Produto) \ltimes_{\text{ordenar por PRECO DESC}})\)

