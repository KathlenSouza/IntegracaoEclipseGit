-- a) 

select Nome_cliente, End_cliente, Nome_vendedor 
from tb_cliente
inner join tb_vendedor on (Cod_vendedorCliente = Cod_vendedor);

-- b) 

select Nome_cliente, Cod_pedido 
from tb_cliente
inner join tb_pedido on (Cod_cpfclientepedido = Cpf_cliente)
order by Nome_cliente, Cod_pedido;

-- c)

select Cod_vendedor, Nome_cliente 
from tb_vendedor 
inner join tb_cliente on (Cod_vendedorCliente = Cod_vendedor)
where Nome_vendedor like '%B%' ;

-- d) 

select Nome_cliente, count(Cod_pedido) as Qtd_pedido 
from tb_cliente
inner join tb_pedido on  Cod_cpfclientepedido = Cpf_cliente
group by Nome_cliente
having  count(Cod_pedido)> 1;

-- e)
select Nome_cliente, tb_pedido.Cod_pedido,tb_pedido.Data_pedido, Cod_peca, Quant_pecaitem, Preco_cotado
FROM tb_cliente
inner join tb_pedido on tb_pedido.Cod_cpfclientepedido = tb_cliente.Cpf_cliente
inner join tb_pedidoitem on tb_pedidoitem.Cod_pedido = tb_pedido.Cod_pedido;

-- f) 
select Nome_cliente, Cpf_cliente,tb_vendedor.Nome_vendedor, tb_pedido.Data_pedido,
tb_pedidoitem.Quant_pecaitem * tb_pedidoitem.Preco_cotado AS Preco_total,
Nome_arm as Armazen from tb_cliente
inner join tb_pedido on Cod_cpfclientepedido = tb_cliente.Cpf_cliente
inner join tb_vendedor on Cod_vendedor = tb_pedido.Cod_vendedorpedido
inner join tb_pedidoitem on tb_pedidoitem.Cod_pedido = tb_pedido.Cod_pedido
inner join tb_peca on tb_peca.Cod_peca = tb_pedidoitem.Cod_peca
inner join tb_armazem on Num_arm = tb_peca.Num_armpeca
where tb_vendedor.Nome_vendedor like '%MARIA%';

-- g)
 CREATE VIEW vw_pedidos_loja_Maria AS
select Nome_cliente, Cpf_cliente,tb_vendedor.Nome_vendedor, tb_pedido.Data_pedido,
tb_pedidoitem.Quant_pecaitem * tb_pedidoitem.Preco_cotado AS Preco_total,
Nome_arm as Armazen from tb_cliente
inner join tb_pedido on Cod_cpfclientepedido = tb_cliente.Cpf_cliente
inner join tb_vendedor on Cod_vendedor = tb_pedido.Cod_vendedorpedido
inner join tb_pedidoitem on tb_pedidoitem.Cod_pedido = tb_pedido.Cod_pedido
inner join tb_peca on tb_peca.Cod_peca = tb_pedidoitem.Cod_peca
inner join tb_armazem on Num_arm = tb_peca.Num_armpeca
where tb_vendedor.Nome_vendedor like '%MARIA%';