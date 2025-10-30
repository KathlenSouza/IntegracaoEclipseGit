create database Bd_Teste;
use  Bd_Teste;
Create table	tb_cliente (cpf_cliente VARCHAR (11) PRIMARY KEY, nome_cliente VARCHAR (100));

	Create table tb_venda (id_venda int PRIMARY KEY, data_venda DATE, cpf_clientevenda VARCHAR (11), FOREIGN KEY (cpf_clientevenda) REFERENCES tb_cliente(cpf_cliente));

	Create table tb_produto(cod_produto int PRIMARY KEY, nome_produto VARCHAR(200), valor_produto double);
    
  Create table   tb_item_venda (id_vendaitem INT,cod_produtoitem INT,quantidade INT,PRIMARY KEY (id_vendaitem, cod_produtoitem), FOREIGN KEY (id_vendaitem) REFERENCES tb_venda(id_venda),FOREIGN KEY (cod_produtoitem) REFERENCES tb_produto(cod_produto));