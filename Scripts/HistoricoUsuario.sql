create table HistoricoUsuario
(
    ID         int not null
        primary key,
    ID_PEDIDO  int null,
    ID_USUARIO int null,
    constraint HistoricoUsuario_ibfk_1
        foreign key (ID_PEDIDO) references Pedido (ID),
    constraint HistoricoUsuario_ibfk_2
        foreign key (ID_USUARIO) references Usuario (ID)
);

create index ID_PEDIDO
    on HistoricoUsuario (ID_PEDIDO);

create index ID_USUARIO
    on HistoricoUsuario (ID_USUARIO);

