create table Estoque
(
    ID                int not null
        primary key,
    ID_PRODUTO        int null,
    QUANTIDADE_ATUAL  int null,
    QUANTIDADE_MINIMA int null,
    QUANTIDADE_MAXIMA int null,
    constraint Estoque_ibfk_1
        foreign key (ID_PRODUTO) references Produto (ID)
);

create index ID_PRODUTO
    on Estoque (ID_PRODUTO);

