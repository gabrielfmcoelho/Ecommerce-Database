SELECT Produto.ID, Produto.NOME, Produto.PRECO, Produto.DESCRICAO, CategoriaProduto.NOME AS CATEGORIA, Fornecedor.NOME AS FORNECEDOR
FROM Produto
JOIN CategoriaProduto ON Produto.ID_CATEGORIA = CategoriaProduto.ID
JOIN Fornecedor ON Produto.ID_FORNECEDOR = Fornecedor.ID;
