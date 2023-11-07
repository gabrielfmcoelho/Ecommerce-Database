create table Fornecedor
(
    ID   int         not null
        primary key,
    CNPJ int         null,
    NOME varchar(50) null,
    constraint CNPJ
        unique (CNPJ)
);

