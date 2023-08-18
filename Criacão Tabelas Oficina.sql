-- Criação DB oficina
create database oficina;
use oficina;

-- Criar tabela Clientes
	create table Clientes(
		idClientes int auto_increment primary key,
        Nome varchar(15) not null,
        Sobrenome varchar(45),
        Endereco varchar(45),
        Contato char(10)
    );

-- Criar tabela Veiculos
	create table Veiculo(
		idVeiculo int auto_increment primary key,
        idClientes int,
        Tipo enum('Carro', 'Caminhonete', 'Caminhão'),
        Modelo varchar(45),
        Placa char(7),
        constraint fk_clientes foreign key (idClientes) references Clientes(idClientes)
    );

-- Criar tabela Serviço
create table Servico(
	idServico int auto_increment primary key,
    idClientes int,
    Descricao varchar(100),
    Valor double,
    constraint fk_veiculo_clientes foreign key (idClientes) references Clientes(idClientes)
);