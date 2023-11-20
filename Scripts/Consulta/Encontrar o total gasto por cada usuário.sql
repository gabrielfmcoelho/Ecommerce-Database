SELECT Usuario.ID, Usuario.EMAIL, SUM(Pedido.VALOR) AS TotalGasto
FROM Usuario
JOIN HistoricoUsuario ON Usuario.ID = HistoricoUsuario.ID_USUARIO
JOIN Pedido ON HistoricoUsuario.ID_PEDIDO = Pedido.ID
GROUP BY Usuario.ID, Usuario.EMAIL;

-- \(\pi_{ID, EMAIL, TotalGasto}(\rho_{ID_USUARIO \leftarrow ID}(Usuario \bowtie_{Usuario.ID = HistoricoUsuario.ID_USUARIO} HistoricoUsuario \bowtie_{HistoricoUsuario.ID_PEDIDO = Pedido.ID} Pedido))\)