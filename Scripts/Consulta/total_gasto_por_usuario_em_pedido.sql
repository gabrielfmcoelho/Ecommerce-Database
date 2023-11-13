SELECT Usuario.ID, Usuario.EMAIL, SUM(Pedido.VALOR) AS TOTAL_GASTO
FROM Usuario
JOIN Carrinho ON Usuario.ID = Carrinho.ID_USUARIO
JOIN Pedido ON Carrinho.ID = Pedido.ID_CARRINHO
GROUP BY Usuario.ID, Usuario.EMAIL;
