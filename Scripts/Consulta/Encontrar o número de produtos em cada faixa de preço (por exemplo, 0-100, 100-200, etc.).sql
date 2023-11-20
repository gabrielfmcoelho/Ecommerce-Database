SELECT
    CASE
        WHEN Produto.PRECO BETWEEN 0 AND 100 THEN '0-100'
        WHEN Produto.PRECO BETWEEN 101 AND 200 THEN '101-200'
        WHEN Produto.PRECO BETWEEN 201 AND 300 THEN '201-300'
        ELSE 'Mais de 300'
    END AS FaixaDePreco,
    COUNT(Produto.ID) AS TotalProdutos
FROM Produto
GROUP BY FaixaDePreco;

-- \(\pi_{FaixaDePreco, TotalProdutos}(\gamma_{COUNT(ID)}(\sigma_{\top}(Produto) \ltimes_{\text{agrupar por FaixaDePreco}}))\)