USE DB_CellShop;

-- Alterações feitas na estrutura do meu Banco de Dados DB_CellShop
-- 25/07/25 - No arquivo "Script-criacao-das-tabelas-do-DB_CellShop.sql":

-- Atualizando a tabela tb_cliente: criando e acrescentando um índice para CPF. Cada CPF deve ser único!
ALTER TABLE tb_cliente
ADD COLUMN cpf VARCHAR(11) NOT NULL AFTER nome;
CREATE INDEX idx_cpf ON tb_cliente (cpf); -- Para que a Query seja otimizada e mais rápida

ALTER TABLE tb_cliente
ADD CONSTRAINT uk_tb_cliente_cpf UNIQUE (cpf); -- Para que cada CPF seja único para identificar um cliente
