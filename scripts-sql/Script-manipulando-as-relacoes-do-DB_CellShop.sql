USE DB_CellSHOP;

-- Manipulando as relações do banco DB_CellShop

-- 2. Atualize o preço de um produto e o e-mail de um cliente
UPDATE tb_produto
SET preco = '1350.90'
WHERE id_produto = 1; -- filtrar pela chave primária

UPDATE tb_cliente
SET email = 'karina.silva1@email.com'
WHERE id_cliente = 1; -- filtrar pela chave primária

-- 3. Delete todos os produtos com preço menor que R$100
SET SQL_SAFE_UPDATES = 0; -- desativar temporariamente o modo de segurança

DELETE FROM tb_produto
WHERE preco < 100;

SET SQL_SAFE_UPDATES = 1; -- ativando novamente o modo de segurança

-- 8. Insira 2 novos clientes e 2 novos produtos fictícios
INSERT INTO tb_cliente (nome, cpf, email, telefone) VALUES
('Michael Chioda', '10000001100', 'michael.chioda@email.com', '(16) 991234375');

INSERT INTO tb_produto (descricao, preco) VALUES
('SSD Kingston 1TB', 880.90);

-- 9. Atualize o telefone de um cliente pelo nome
UPDATE tb_cliente
SET telefone = '(15) 990984631'
WHERE id_cliente = 7;

-- 10. Atualize todos os produtos com preço menor que R$100 adicionando “(Promoção)” na descrição
SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produto
SET descricao = CONCAT(descricao, ' (Promoção)') -- concatenando a string existente no campo com outra
WHERE preco < 200;

SET SQL_SAFE_UPDATES = 1;

-- 11. Delete vendas feitas antes de 2024-07-05
SET SQL_SAFE_UPDATES = 0;

DELETE FROM tb_venda
WHERE data_venda < '2024-07-05';

SET SQL_SAFE_UPDATES = 1;

-- 16. Delete clientes sem email cadastrado
SET SQL_SAFE_UPDATES = 0;

DELETE FROM tb_cliente
WHERE email IS NULL;

SET SQL_SAFE_UPDATES = 1;

-- 17. Atualize todas as formas de pagamento para "cartao" para as vendas feitas depois de 2024-07-07
UPDATE tb_pagamento JOIN tb_venda
	ON tb_pagamento.id_venda = tb_venda.id_venda
SET forma_pagamento = 'cartao'
WHERE data_venda > '2024-07-07';
