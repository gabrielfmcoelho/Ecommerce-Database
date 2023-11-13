create table Carrinho
(
    ID         int        not null
        primary key,
    ID_USUARIO int        null,
    ID_PRODUTO int        null,
    QUANTIDADE int        null,
    ATIVO      tinyint(1) not null,
    constraint Carrinho_ibfk_1
        foreign key (ID_USUARIO) references Usuario (ID),
    constraint Carrinho_ibfk_2
        foreign key (ID_PRODUTO) references Produto (ID)
);

create index ID_PRODUTO
    on Carrinho (ID_PRODUTO);

create index ID_USUARIO
    on Carrinho (ID_USUARIO);

