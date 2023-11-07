create table InformacoesDePagamento
(
    ID            int         not null
        primary key,
    ID_USUARIO    int         null,
    NUMERO_CARTAO varchar(20) not null,
    VALIDADE      varchar(7)  not null,
    CVV           varchar(4)  not null,
    constraint InformacoesDePagamento_ibfk_1
        foreign key (ID_USUARIO) references Usuario (ID)
);

create index ID_USUARIO
    on InformacoesDePagamento (ID_USUARIO);

