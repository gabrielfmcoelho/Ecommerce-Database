create table TituloDePagamento
(
    ID              int            not null
        primary key,
    ID_PEDIDO       int            null,
    DATA            datetime       null,
    DESCR_PAGAMENTO varchar(10)    null,
    VALOR           decimal(50, 2) null,
    constraint TituloDePagamento_ibfk_1
        foreign key (ID_PEDIDO) references Pedido (ID)
);

create index ID_PEDIDO
    on TituloDePagamento (ID_PEDIDO);

