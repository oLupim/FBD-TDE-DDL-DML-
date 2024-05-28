--Atividades.
--Faça os scripts de criação da estrutura das tabelas, conforme diagrama ER: 
--Utilizando o SGBD MariaDB no site https://sqliteonline.com/Links para um site externo. faça os passos que segue:
--Popule as tabelas com comandos inserts para inserção de 3 tuplas cada tabela:

create table fornecedor(
    codigo int not null,
    nome varchar(30) not null
);

create table categoria(
    codigo int not null primary key,
    nome varchar(30) not null
);

create table produtos(
    codigo int not null primary key,
    descricao varchar(30) not null,
    data_cadastro date not null,
    valor_unitario float not null,
    codigo_cate int not null,
    constraint categoria_produtos
    foreign key (codigo_cate) references categoria(codigo)
);

create table pede(
    quantidade int not null primary key,
    valor_unitario float not null,
    data_pedido date not null,
    codigo_prod int not null,
    codigo_forn int not null,
    constraint produtos_pede
    foreign key (codigo_prod) references produtos(codigo)
);