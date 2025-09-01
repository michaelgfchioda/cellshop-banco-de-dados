CREATE DATABASE IF NOT EXISTS DB_CellShop;

USE DB_CellShop;

CREATE TABLE tb_cliente (
id_cliente			INT AUTO_INCREMENT,
nome				VARCHAR(100) NOT NULL,
email				VARCHAR(100),
telefone			VARCHAR(20),
	CONSTRAINT pk_tb_cliente_id_cliente PRIMARY KEY (id_cliente)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4; -- Para que a tabela aceite acentuação e caracteres especiais

CREATE TABLE tb_venda (
id_venda			INT AUTO_INCREMENT,
data_venda			DATE NOT NULL,
id_cliente			INT,
	CONSTRAINT pk_tb_venda_id_venda PRIMARY KEY (id_venda),
    CONSTRAINT fk_tb_venda_id_cliente FOREIGN KEY (id_cliente)
		REFERENCES tb_cliente (id_cliente)
			ON DELETE SET NULL -- Se o cliente for apagado do sistema, id_cliente vira NULL
			ON UPDATE CASCADE, -- Se o id mudar, atualize tudo, garanta que todos os dados fiquem sincronizados
	INDEX idx_tb_venda_id_venda_id_cliente (id_venda, id_cliente) -- Para que a Query seja otimizada e mais rápida
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4; -- Para que a tabela aceite acentuação e caracteres especiais

CREATE TABLE tb_produto (
id_produto			INT AUTO_INCREMENT,
descricao			VARCHAR(100) NOT NULL,
preco				DECIMAL(10,2) NOT NULL,
	CONSTRAINT pk_tb_produto_id_produto PRIMARY KEY (id_produto),
    INDEX idx_tb_produto_id_produto (id_produto) -- Para que a Query seja otimizada e mais rápida
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4; -- Para que a tabela aceite acentuação e caracteres especiais

CREATE TABLE tb_ItemVenda (
id_item				INT AUTO_INCREMENT,
quantidade			INT NOT NULL,
subtotal			DECIMAL(10,2),
id_venda			INT NOT NULL,
id_produto			INT,
	CONSTRAINT pk_tb_ItemVenda_id_item PRIMARY KEY (id_item),
    CONSTRAINT fk_tb_ItemVenda_id_venda FOREIGN KEY (id_venda)
		REFERENCES tb_venda (id_venda),
	CONSTRAINT fk_tb_ItemVenda_id_produto FOREIGN KEY (id_produto)
		REFERENCES tb_produto (id_produto)
			ON DELETE SET NULL -- Se o produto dor apagado do sistema, id_produto vira NULL
			ON UPDATE CASCADE, -- Se o id mudar, atualize tudo, garanta que todos os dados fiquem sincronizados
	INDEX idx_tb_ItemVenda_id_item_id_venda_id_produto (id_item, id_venda, id_produto) -- Para que a Query seja otimizada e mais rápida
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4; -- Para que a tabela aceite acentuação e caracteres especiais

CREATE TABLE tb_pagamento (
id_pagamento		INT AUTO_INCREMENT,
forma_pagamento		VARCHAR(50) NOT NULL,
valor_pago			DECIMAL(10,2) NOT NULL,
parcelas			INT DEFAULT 1, -- Inicia com valor 1
id_venda			INT,
	CONSTRAINT pk_tb_pagamento_id_pagamento PRIMARY KEY (id_pagamento),
	CONSTRAINT fk_tb_pagamento_id_venda FOREIGN KEY (id_venda)
		REFERENCES tb_venda (id_venda)
			ON DELETE SET NULL -- Se a venda for apagada do sistema, id_venda vira NULL
			ON UPDATE CASCADE, -- Se o id mudar, atualize tudo, garanta que todos os dados fiquem sincronizados
	CONSTRAINT uk_tb_pagamento_id_venda UNIQUE (id_venda),
    INDEX idx_tb_pagamento_id_pagamento_id_venda (id_pagamento, id_venda) -- Para que a Query seja otimizada e mais rápida
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4; -- Para que a tabela aceite acentuação e caracteres especiais

-- Atualizando a tabela tb_cliente: criando e acrescentando um índice para CPF. Cada CPF deve ser único!
ALTER TABLE tb_cliente
ADD COLUMN cpf VARCHAR(11) NOT NULL AFTER nome;
CREATE INDEX idx_cpf ON tb_cliente (cpf);

ALTER TABLE tb_cliente
ADD CONSTRAINT uk_tb_cliente_cpf UNIQUE (cpf);
-- ------------------------------------------------------------
SHOW TABLES;