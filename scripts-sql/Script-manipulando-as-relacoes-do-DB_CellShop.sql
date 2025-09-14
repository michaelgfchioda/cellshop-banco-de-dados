USE DB_CellSHOP;

-- Manipulando as relações do banco DB_CellShop

-- 2. Atualize o preço de um produto e o e-mail de um cliente
SELECT *
FROM tb_produto;

UPDATE tb_produto
SET preco = '1350.90'
WHERE id_produto = 1; -- filtrar pela chave primária

SELECT *
FROM tb_produto
WHERE id_produto = 1;

SELECT *
FROM tb_cliente;

UPDATE tb_cliente
SET email = 'karina.silva1@email.com'
WHERE id_cliente = 1; -- filtrar pela chave primária

SELECT *
FROM tb_cliente
WHERE id_cliente = 1;

-- 3. Delete todos os produtos com preço menor que R$100
SET SQL_SAFE_UPDATES = 0; -- desativar temporariamente o modo de segurança

DELETE FROM tb_produto
WHERE preco < 100;

SET SQL_SAFE_UPDATES = 1; -- ativando novamente o modo de segurança

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
INSERT INTO tb_cliente (nome, cpf, email, telefone) VALUES
('Michael Chioda', '10000001100', 'michael.chioda@email.com', '(16) 991234375');

SELECT *
FROM tb_cliente
WHERE nome = 'Michael Chioda';

INSERT INTO tb_produto (descricao, preco) VALUES
('SSD Kingston 1TB', 880.90);

SELECT *
FROM tb_produto
WHERE descricao LIKE '%SSD%';

-- 9. Atualize o telefone de um cliente pelo nome
SELECT *
FROM tb_cliente;

UPDATE tb_cliente
SET telefone = '(15) 990984631'
WHERE id_cliente = 7;

SELECT *
FROM tb_cliente
WHERE id_cliente = 7;

-- 10. Atualize todos os produtos com preço menor que R$100 adicionando “(Promoção)” na descrição
SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produto
SET descricao = CONCAT(descricao, ' (Promoção)') -- concatenando a string existente no campo com outra
WHERE preco < 200;

SET SQL_SAFE_UPDATES = 1;

SELECT *
FROM tb_produto
WHERE preco < 200;

-- 11. Delete vendas feitas antes de 2024-07-05
SELECT *
FROM tb_venda
WHERE data_venda < '2024-07-05';

	-- Permitindo que a coluna id_venda em tb_ItemVenda passe a aceitar valores NULL
ALTER TABLE tb_ItemVenda
MODIFY COLUMN id_venda INT NULL; 

	-- Excluindo restrição com a permição antiga sobre não aceitar valores NULL
ALTER TABLE tb_ItemVenda
DROP FOREIGN KEY fk_tb_ItemVenda_id_venda; 

	-- Criando a restrição novamente para aceitar a permissão alterada do campo id_venda nas linhas 279-280
    -- e adicionando novas regras para manter as boas práticas
ALTER TABLE tb_ItemVenda
ADD CONSTRAINT fk_tb_ItemVenda_id_venda FOREIGN KEY (id_venda) 
	REFERENCES tb_venda (id_venda)
		ON DELETE SET NULL -- Adicionando regra para deixar id_venda como NULL caso seu registro seja excluído
        ON UPDATE CASCADE; -- Se o id mudar, atualize tudo, garanta que todos os dados fiquem sincronizados

SET SQL_SAFE_UPDATES = 0;

DELETE FROM tb_venda
WHERE data_venda < '2024-07-05';

SET SQL_SAFE_UPDATES = 1;
