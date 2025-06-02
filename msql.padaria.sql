create database if not exists osmar_paes;
use osmar_paes;

create table produtos(id_produtos int auto_increment primary key not null,
doces varchar(50) not null,
salgados varchar (50) not null,
bebidas varchar (50) not null,
datadeentrega datetime not null,
validade int not null,
estoque varchar (50) not null);

create table funcionarios(id_funcionarios int auto_increment primary key not null,
cpf varchar (55) not null,
cargo varchar (55) not null,
nome varchar (55) not null,
gmail varchar (55) not null,
endereco varchar (80) not null,
genero char not null,
entradaSaida datetime not null);

create table cliente(id_cliente int auto_increment primary key not null,
cpf varchar (55) not null,
nome varchar (55) not null,
endereco varchar (80) not null,
carrinho varchar (100) not null,
telefone varchar (45) not null,
historico varchar (100) not null);

