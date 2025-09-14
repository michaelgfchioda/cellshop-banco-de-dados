USE DB_CellShop;

-- Realizando algumas Querys no banco DB_CellShop

-- 2. Atualize o preço de um produto e o e-mail de um cliente
SELECT *
FROM tb_produto;

SELECT *
FROM tb_produto
WHERE id_produto = 1;

SELECT *
FROM tb_cliente;

SELECT *
FROM tb_cliente
WHERE id_cliente = 1;

-- 3. Delete todos os produtos com preço menor que R$100
SELECT *
FROM tb_produto
WHERE preco < 100;

-- 4. Liste todos os clientes cujo nome contém 'Silva'
SELECT *
FROM tb_cliente
WHERE nome LIKE '%Silva%';

-- 5. Liste as vendas feitas entre '2024-07-01' e '2024-07-03'
SELECT *
FROM tb_venda
WHERE data_venda BETWEEN '2024-07-01' AND '2024-07-03';

-- 6. Liste os produtos com preços entre R$500 e R$2000
SELECT *
FROM tb_produto
WHERE preco BETWEEN 500 AND 2000
ORDER BY preco ASC;

-- 7. Liste os pagamentos feitos com parcelas maiores que 3
SELECT *
FROM tb_pagamento
WHERE parcelas > 3;

-- 8. Insira 2 novos clientes e 2 novos produtos fictícios
SELECT *
FROM tb_cliente
WHERE nome = 'Michael Chioda';

SELECT *
FROM tb_produto
WHERE descricao LIKE '%SSD%';

-- 9. Atualize o telefone de um cliente pelo nome
SELECT *
FROM tb_cliente;

SELECT *
FROM tb_cliente
WHERE id_cliente = 7;

-- 10. Atualize todos os produtos com preço menor que R$100 adicionando “(Promoção)” na descrição
SELECT *
FROM tb_produto
WHERE preco < 200;

-- 11. Delete vendas feitas antes de 2024-07-05
SELECT *
FROM tb_venda
WHERE data_venda < '2024-07-05';

-- 12. Liste produtos que contenham “Bluetooth”
SELECT *
FROM tb_produto
WHERE descricao LIKE '%Bluetooth%';

-- 13. Liste clientes com sobrenome “Silva” ou “Souza”
SELECT *
FROM tb_cliente
WHERE nome LIKE '%Silva' OR nome LIKE '%Souza';

-- 14. Consulte pagamentos realizados em Pix ou dinheiro
SELECT *
FROM tb_pagamento
WHERE forma_pagamento LIKE LOWER('pix') OR forma_pagamento LIKE LOWER('dinheiro');

-- 15. Mostre vendas com total de valor pago acima de R$500
SELECT
tb_venda.id_venda,
tb_pagamento.id_pagamento,
tb_pagamento.valor_pago,
tb_venda.data_venda
FROM tb_venda JOIN tb_pagamento
	ON tb_venda.id_venda = tb_pagamento.id_venda
WHERE valor_pago > 500
ORDER BY valor_pago ASC;

-- 16. Delete clientes sem email cadastrado
SELECT *
FROM tb_cliente
WHERE email IS NULL;

-- 17. Atualize todas as formas de pagamento para "cartao" para as vendas feitas depois de 2024-07-07
SELECT *
FROM tb_venda, tb_pagamento;

SELECT
tb_venda.id_venda,
tb_pagamento.id_pagamento,
tb_pagamento.forma_pagamento,
tb_venda.data_venda
FROM tb_venda JOIN tb_pagamento
	ON tb_venda.id_venda = tb_pagamento.id_venda
WHERE data_venda > '2024-07-07'
ORDER BY data_venda ASC;
