create database loja;
use loja;

create table produtos(
produtos_id int primary key,
camiseta decimal (5,2),
calça decimal (5,2),
saia decimal (5,2),
vestido decimal (5,2),
short decimal (5,2),
sapato decimal (5,2)
) ;

create table cliente (
cliente_id int primary key,
nome varchar (30),
cpf varchar (30),
email varchar (40)
);

create table pedidos (
pedidos_id int primary key,
número float (10),
pessoa varchar (30),
 FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

create table departamentos (
    departamentos_id int primary key,
    nome varchar (30) not null,
    orcamento DECIMAL(15,2)
    );

create table  funcionarios (
    funcionarios_id int primary key,
    nome varchar (40) not null,
    salario decimal (7,2)
    );


create table vendas (
    vendas_id int primary key,
    data_venda date,
    valor_total decimal (10,2)
    )


