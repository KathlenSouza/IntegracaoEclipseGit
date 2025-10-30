INSERT INTO tb_vendedor VALUES (3, 'Bruna Lima', '55555555555', 'Rua M, 45', 6.0);
INSERT INTO tb_vendedor VALUES (4, 'Zé da Loja', '99999999999', 'Rua Zé, 99', 7.5);

-- Novos Clientes
INSERT INTO tb_cliente VALUES ('33333333333', 'Cliente C', 'Rua Q, 30', 7000.00, 1200.00, 3);
INSERT INTO tb_cliente VALUES ('44444444444', 'Cliente D', 'Rua R, 40', 2000.00, 500.00, 4);

-- Novos Pedidos
INSERT INTO tb_pedido VALUES (3, 258, '2025-07-12', '33333333333', 3);
INSERT INTO tb_pedido VALUES (4, 259, '2025-07-13', '44444444444', 4);
INSERT INTO tb_pedido VALUES (5, 260, '2025-07-14', '33333333333', 3);  -- Cliente com + de 1 pedido

-- Novos Itens de Pedido
INSERT INTO tb_pedidoitem VALUES (4, 101, 3, 20, 0.50);
INSERT INTO tb_pedidoitem VALUES (5, 102, 4, 40, 0.29);
INSERT INTO tb_pedidoitem VALUES (6, 103, 5, 10, 0.20);