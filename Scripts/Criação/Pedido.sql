create table Pedido
(
    ID                int            not null
        primary key,
    ID_CARRINHO       int            null,
    VALOR             decimal(50, 2) null,
    DATA              datetime       null,
    ID_INFO_PAGAMENTO int            not null,
    constraint Pedido_InformacoesDePagamento_ID_fk
        foreign key (ID_INFO_PAGAMENTO) references InformacoesDePagamento (ID),
    constraint Pedido_ibfk_1
        foreign key (ID_CARRINHO) references Carrinho (ID)
);

create index ID_CARRINHO
    on Pedido (ID_CARRINHO);

