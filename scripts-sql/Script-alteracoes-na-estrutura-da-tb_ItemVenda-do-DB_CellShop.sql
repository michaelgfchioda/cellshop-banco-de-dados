USE DB_CellShop;

/* 	26/07/25 - No arquivo "Script-manipulando-as-relacoes-do-DB_CellShop.sql":
	Para executar o comando SQL n° 11 presente nesse arquivo (11. Delete vendas feitas antes de 2024-07-05), foi preciso realizar algumas alterações
	na estrutura da tabela tb_ItemVenda (presente em "Script-criacao-das-tabelas-do-DB_CellShop.sql"):
*/

-- 	O comando: "11. Delete vendas feitas antes de 2024-07-05" não funcionará pois a FK (FOREIGN KEY) id_venda 
--	da tb_ItemVenda foi configurada para não permitir registros como NULL.

-- 	Realizando uma Query de todos os registros que serão excluídos.
SELECT *
FROM tb_venda
WHERE data_venda < '2024-07-05';

-- 	Permitindo que a coluna id_venda em tb_ItemVenda passe a aceitar valores NULL.
ALTER TABLE tb_ItemVenda
MODIFY COLUMN id_venda INT NULL; 

-- Agora, é preciso excluir a restrição FK que referenciava a coluna da tabela com a permição antiga sobre não aceitar valores NULL.
ALTER TABLE tb_ItemVenda
DROP FOREIGN KEY fk_tb_ItemVenda_id_venda; 


-- 	Criando a restrição FK novamente para aceitar a permissão alterada do campo id_venda nas linhas 279-280
--	e adicionando novas regras para manter as boas práticas.

ALTER TABLE tb_ItemVenda
ADD CONSTRAINT fk_tb_ItemVenda_id_venda FOREIGN KEY (id_venda) 
	REFERENCES tb_venda (id_venda)
		ON DELETE SET NULL -- Adicionando regra para deixar id_venda como NULL caso seu registro seja excluído
        ON UPDATE CASCADE; -- Se o id mudar, atualize tudo, garanta que todos os dados fiquem sincronizados

SET SQL_SAFE_UPDATES = 0;

DELETE FROM tb_venda
WHERE data_venda < '2024-07-05';

SET SQL_SAFE_UPDATES = 1;
