SELECT Produto.NOME, Estoque.QUANTIDADE_ATUAL
FROM Produto
JOIN Estoque ON Produto.ID_ESTOQUE = Estoque.ID;

-- \(\pi_{NOME, QUANTIDADE_ATUAL}(Produto \bowtie_{Produto.ID_ESTOQUE = Estoque.ID} Estoque)\)

