create table Produto
(
    ID            int            not null
        primary key,
    NOME          varchar(100)   null,
    PRECO         decimal(10, 2) null,
    DESCRICAO     text           null,
    ID_CATEGORIA  int            null,
    ID_FORNECEDOR int            not null,
    ID_ESTOQUE    int            not null,
    MODELO        varchar(20)    null,
    constraint Produto_Estoque_ID_fk
        foreign key (ID_ESTOQUE) references Estoque (ID),
    constraint Produto_Fornecedor_ID_fk
        foreign key (ID_FORNECEDOR) references Fornecedor (ID),
    constraint Produto_ibfk_1
        foreign key (ID_CATEGORIA) references CategoriaProduto (ID)
);

create index ID_CATEGORIA
    on Produto (ID_CATEGORIA);

