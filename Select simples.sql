use oficina;
select * from clientes;
select * from clientes where sobrenome = '';

select * from veiculo order by idclientes;

select sum(valor), idClientes from servico group by idclientes having sum(Valor);

select c.idClientes, c.Nome, sum(s.valor) from servico s
inner join clientes c on s.idClientes = c.idClientes
group by s.idClientes having sum(s.valor);