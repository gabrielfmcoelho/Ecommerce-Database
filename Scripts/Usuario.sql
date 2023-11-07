create table Usuario
(
    ID                int         not null
        primary key,
    CPF               varchar(50) not null,
    EMAIL             varchar(50) not null,
    SENHA             varchar(20) not null,
    ID_INFO_PAGAMENTO int         not null,
    ID_INFO_CONTATO   int         not null,
    ID_CARRINHO       int         null,
    ID_HISTORICO      int         null,
    constraint CPF
        unique (CPF),
    constraint EMAIL
        unique (EMAIL),
    constraint Usuario_Carrinho_ID_fk
        foreign key (ID_CARRINHO) references Carrinho (ID),
    constraint Usuario_HistoricoUsuario_ID_fk
        foreign key (ID_HISTORICO) references HistoricoUsuario (ID),
    constraint Usuario_InformacoesDeContato_ID_fk
        foreign key (ID_INFO_CONTATO) references InformacoesDeContato (ID),
    constraint Usuario_InformacoesDePagamento_ID_fk
        foreign key (ID_INFO_PAGAMENTO) references InformacoesDePagamento (ID)
);

