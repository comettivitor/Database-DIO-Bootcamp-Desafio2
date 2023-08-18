-- Persistência de dados Oficina
use oficina;

desc clientes;
insert into clientes(nome,sobrenome,endereco,contato)
values('Vitor','Mattos','Rua Montevideu n111, Vila Nova','2799999999'),
('jhon','Doe','Rua X n39, Vila Alta','2798456555'),
('Jimmy','','Rua Guriri, Nova','2799999999'),
('Pikachu','do Ash','','274561384'),
('Drago','Nite','Rua Y n88, Montanha','784562385');
select * from clientes;

desc Veiculo;
insert into Veiculo (idclientes,tipo,modelo,placa)
values(6,'Carro','FOX','pph2345'),
(7,'Carro','ONIX','ped4345'),
(8,'Carro','FOX','pph2325'),
(9,'Caminhao','Truck','pqw1234'),
(6,'Carro','Mercedes','cvs1523');
select * from veiculo;

desc servico;
insert into Servico(idclientes,descricao,valor)
values(6,'troca de oleo',200.00),
(7,'troca freios', 500.00),
(7,'manutencao', 400.00),
(8,'Alinhamento', 100.00),
(9,'troca freios', 500.00),
(6,'alinhamento e balanceamento', 250.00);
select * from servico;