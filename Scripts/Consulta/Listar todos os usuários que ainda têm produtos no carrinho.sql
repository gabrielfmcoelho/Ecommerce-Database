SELECT DISTINCT Usuario.ID, Usuario.EMAIL
FROM Usuario
JOIN Carrinho ON Usuario.ID = Carrinho.ID_USUARIO
WHERE Carrinho.ATIVO = 1;

-- \(\pi_{ID, EMAIL}(\sigma_{ATIVO=1}(Usuario \bowtie_{Usuario.ID = Carrinho.ID_USUARIO} Carrinho))\)

