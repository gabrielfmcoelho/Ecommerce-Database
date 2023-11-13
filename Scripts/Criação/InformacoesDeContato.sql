create table InformacoesDeContato
(
    ID        int          not null
        primary key,
    NOME      varchar(50)  null,
    SOBRENOME varchar(50)  null,
    ENDERECO  varchar(255) null,
    CIDADE    varchar(100) null,
    ESTADO    varchar(50)  null,
    CEP       varchar(20)  null,
    TELEFONE  varchar(20)  null
);

