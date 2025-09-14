USE DB_CellShop;

-- 1. Insira clientes, produtos e vendas com seus itens e pagamentos
-- com base nos arquivos: dados.csv, Clientes-CellShop.csv, item_venda.csv, 1000clientes.csv

	-- Inserindo 1000 registros por importação na tabela tb_clientes
LOAD DATA LOCAL INFILE 'C://Users/Michael/Downloads/Projeto-CellShop/1000clientes.csv'
INTO TABLE tb_cliente
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
(nome, cpf, email, telefone);
-- IGNORE 1 ROW; - Não é necessário, pois o arquivo.csv importado não possui cabeçalho

SELECT *
FROM tb_cliente;

	-- Inserindo mais 10 registros na tabela tb_cliente
INSERT INTO tb_cliente (nome, cpf, email, telefone) VALUES
('Lucas Silva', 10000001001, 'lucas@email.com','(31) 98801-1010'),
('Ana Monteiro', 10000001002, 'ana@email.com','(31) 98802-2020'),
('Rafael Souza', 10000001003, 'rafael@email.com','(31) 98803-3030'),
('Juliana Freitas', 10000001004, 'juliana@email.com','(31) 98804-4040'),
('Caio Lima', 10000001005, 'caio@email.com','(31) 98805-5050'),
('Fernanda Teixeira', 10000001006, 'fernanda@email.com','(31) 98806-6060'),
('Carlos Mendes', 10000001007, 'carlos@email.com','(31) 98807-7070'),
('Roberta Pires', 10000001008, NULL,'(31) 98808-8080'),
('Felipe Araújo', 10000001009, 'felipe@email.com','(31) 98809-9090'),
('Marcela Ribeiro', 10000001010, 'marcela@email.com','(31) 98810-1010');

SELECT *
FROM tb_cliente;

	-- Inserindo registros na tabela tb_produto
INSERT INTO tb_produto (descricao, preco) VALUES
('Smartphone Galaxy A14',1299.90), ('Fone Bluetooth JBL Tune',349.99),
('Notebook Lenovo IdeaPad 3',3199.00), ('Carregador USB-C Turbo',89.90),
('Capa p/ iPhone 13',69.90), ('Smartwatch Amazfit Bip U Pro',499.00),
('Película de Vidro Galaxy A14',39.90), ('Fone Bluetooth Lenovo X5',199.90),
('Suporte Magnético para Carro',59.90), ('Adaptador USB Tipo-C',29.90),
('Smartphone Galaxy M14',1399.90), ('Tablet Samsung Tab A7',899.00),
('Notebook Dell Inspiron 15',3899.00), ('Fone Bluetooth Xiaomi Redmi Airdots 3',179.90),
('Cabo USB-C 1.5m',24.90), ('Teclado Mecânico Gamer Redragon',229.90),
('Mouse Sem Fio Logitech M185',99.90), ('Monitor LG 24” Full HD',799.00),
('Hub USB 4 portas',69.90), ('Impressora HP DeskJet Ink',399.00),
('Webcam Full HD Logitech C270',299.90), ('Headset Gamer JBL Quantum 100',279.90),
('Pen Drive Sandisk 64GB',49.90), ('HD Externo Seagate 1TB',349.90),
('SSD Kingston 480GB',319.90), ('Memória RAM 8GB DDR4',229.90),
('Controle PS4 Dualshock Preto',349.00), ('Controle Xbox Wireless Series X',429.00),
('Carregador Portátil PowerBank 10000mAh',149.90), ('Câmera de Segurança Wi-Fi Intelbras',189.90),
('Smart TV LG 43” 4K UHD',2299.00), ('Repetidor Wi-Fi TP-Link',129.90),
('Extensor de Tomada 5 Entradas',39.90), ('Caixa de Som Bluetooth JBL Go 3',249.90),
('Estabilizador SMS 300VA',199.00), ('Filtro de Linha Clamper Energia',59.90),
('Teclado Wireless Multilaser',89.90), ('Cabo HDMI 2.0 2m',39.90),
('Microfone Condensador Fifine K669',269.90), ('Adaptador Bluetooth USB',49.90),
('Luminária de Mesa LED USB',89.90), ('Suporte de Celular Flexível',29.90),
('Mousepad Gamer RGB',109.90), ('Organizador de Cabos em Velcro',19.90),
('Câmera Action Cam 4K',299.00), ('Mini Projetor Portátil LED',429.00),
('Roteador TP-Link Archer C6',199.00), ('Modem Roteador Claro Net',299.90),
('Balança Digital Smart',119.90), ('Echo Dot Alexa 4ª Geração',349.00),
('Interruptor Wi-Fi Inteligente',89.90), ('Sensor de Presença Wi-Fi',129.90),
('Relógio Digital de Mesa LED',59.90), ('Cabo Lightning Original Apple',139.90),
('Capa Antichoque Galaxy S23',79.90), ('Película Nano Gel iPhone XR',39.90),
('Teclado Gamer RGB ABNT2',179.90), ('HD Externo WD 2TB',529.90),
('SSD M.2 NVMe 1TB',479.90), ('Memória RAM 16GB DDR4',399.00),
('Placa de Vídeo GTX 1660 Super',1299.00), ('Placa Mãe ASUS B450M',699.90),
('Fonte ATX 600W 80 Plus',379.90), ('Gabinete Gamer com LED',349.90),
('Cooler para Processador',149.90), ('Adaptador VGA para HDMI',49.90),
('Conversor Digital para TV',99.90), ('Smartwatch Xiaomi Mi Band 7',269.90),
('Celular Xiaomi Poco X5',1899.00), ('Drone DJI Mini SE',2399.00),
('Ventilador USB Portátil',59.90), ('Mini Teclado Wireless Touchpad',119.90),
('Receptor Digital USB',89.90), ('Webcam HD com Microfone',159.90),
('Aspirador Robô Inteligente',749.90), ('Chaveiro Localizador Bluetooth',79.90),
('Leitor de Cartão SD USB 3.0',69.90), ('Estabilizador Gamer 1000VA',359.90),
('Aquecedor Portátil Cerâmico',229.90), ('Fone com Cancelamento de Ruído',389.90),
('Bateria Externa MagSafe 5000mAh',279.90), ('Dock Station USB-C',399.90),
('Base para Notebook com Cooler',149.90), ('Tinta Original HP 664',99.90),
('Cartucho Epson T195',89.90), ('Relógio Casio Vintage Digital',179.90),
('Multímetro Digital',89.90), ('Termômetro Infravermelho',129.90),
('Gravador de Voz Portátil',199.90), ('Etiqueta Eletrônica NFC',19.90),
('Placa Arduino UNO R3',99.90), ('Kit de Sensores Arduino',149.90),
('Carregador de Pilhas Recarregáveis',89.90), ('Pilhas AA Recarregáveis 4un',79.90),
('Câmera Baby Monitor',399.90), ('Controle Remoto Universal Smart',59.90),
('Cabo USB para Impressora',29.90), ('Fita LED RGB 5m com Controle',109.90),
('Fonte Universal para Notebook',159.90), ('Balança de Cozinha Digital',49.90),
('Sensor de Porta Wi-Fi',89.90), ('Régua de Energia Inteligente',129.90),
('Lâmpada Inteligente Wi-Fi RGB',79.90), ('Suporte para Monitor com Gavetas',119.90),
('Caneta Stylus Universal',59.90), ('Hub USB-C com HDMI e RJ45',249.90),
('Adaptador de Tomada Universal',39.90), ('Cabo Áudio P2 x RCA',19.90),
('Fone Intra-Auricular JBL Endurance',119.90), ('Webcam Full HD com Ring Light',299.90),
('Suporte de Parede para TV 32-55',99.90), ('Filtro Polarizador para Câmera',89.90),
('Case para HD 2.5" USB 3.0',59.90), ('Controle de Iluminação por App',109.90),
('Cabo USB A para USB C 3.1',39.90), ('Adaptador M.2 para SATA',49.90),
('Suporte Veicular com Indução',199.90), ('Cabo de Rede CAT6 10m',69.90);

SELECT *
FROM tb_produto;

	-- Inserindo registros na tabela tb_venda
INSERT INTO tb_venda (data_venda, id_cliente) VALUES
('2024-06-10', 1), ('2024-06-11', 2), ('2024-06-11', 3),
('2024-06-12', 4), ('2024-06-12', 5), ('2024-06-13', 6),
('2024-06-14', 7), ('2024-06-14', 8), ('2024-06-15', 9),
('2024-06-15', 10), ('2024-07-01', 1), ('2024-07-02', 2),
('2024-07-03', 3), ('2024-07-04', 4), ('2024-07-05', 5),
('2024-07-06', 6), ('2024-07-07', 7), ('2024-07-08', 8),
('2024-07-09', 9), ('2024-07-10', 10), ('2023-01-10', 1),
('2023-03-12', 2), ('2023-06-30', 3), ('2023-08-08', 4),
('2023-10-22', 5), ('2023-12-18', 6), ('2023-12-29', 7),
('2023-11-03', 8), ('2023-05-15', 9), ('2023-09-27', 10),
('2024-01-15', 1), ('2024-03-18', 2), ('2024-05-10', 3),
('2024-06-29', 4), ('2024-08-02', 5), ('2024-10-07', 6),
('2024-11-22', 7), ('2024-09-09', 8), ('2024-12-01', 9),
('2024-12-24', 10), ('2025-01-10', 1), ('2025-02-14', 2),
('2025-03-21', 3), ('2025-04-30', 4), ('2025-05-05', 5),
('2025-06-18', 6), ('2025-07-02', 7), ('2025-08-29', 8),
('2025-08-30', 9), ('2025-08-31', 10);

SELECT *
FROM tb_venda;

	-- Inserindo registros na tabela tb_ItemVenda
INSERT INTO tb_ItemVenda (quantidade, subtotal, id_venda, id_produto) VALUES -- id_item é incrementado automaticamente
(1, 4299.90, 1, 101), (2, 3399.00, 2, 103),
(1, 5199.00, 3, 102), (1, 39.90, 3, 107),
(1, 279.99, 4, 104), (1, 139.90, 4, 105),
(1, 49.90, 5, 106), (1, 399.00, 5, 108),
(1, 3899.00, 6, 109), (1, 139.90, 6, 105),
(1, 139.90, 11, 5), (2, 798.00, 12, 8),
(1, 49.90, 13, 6), (1, 3899.00, 14, 9),
(1, 279.99, 15, 4), (2, 119.80, 16, 10),
(1, 4299.90, 17, 1), (1, 5199.00, 18, 2),
(2, 79.80, 19, 7), (1, 1699.50, 20, 3),
(1, 4299.90, 21, 1), (1, 1699.50, 22, 3),
(1, 279.99, 23, 4), (1, 399.00, 24, 8),
(1, 139.90, 25, 5), (1, 5199.00, 26, 2),
(1, 3899.00, 27, 9), (2, 119.80, 28, 10),
(1, 49.90, 29, 6), (2, 79.80, 30, 7),
(1, 1699.50, 31, 3), (1, 139.90, 32, 5),
(1, 279.99, 33, 4), (1, 5199.00, 34, 2),
(1, 399.00, 35, 8), (1, 3899.00, 36, 9),
(2, 99.80, 37, 6), (1, 39.90, 38, 7),
(1, 4299.90, 39, 1), (1, 59.90, 40, 10),
(1, 5199.00, 41, 2), (1, 279.99, 42, 4),
(1, 399.00, 43, 8), (1, 139.90, 44, 5),
(1, 1699.50, 45, 3), (1, 4299.90, 46, 1),
(1, 49.90, 47, 6), (1, 3899.00, 48, 9),
(1, 59.90, 49, 10), (2, 79.80, 50, 7);

SELECT *
FROM tb_ItemVenda;

-- Mesmo que na criação da tabela tb_ItemVenda a ordem das colunas seja: 
-- id_item, quantidade, subtotal, id_venda e id_produto, se especificar corretamente quais são as colunas
-- corretas com seus registros corretos dentro do arquivo, na importação, o SGBD vai alocar corretamente
-- cada registro em suas respectivas colunas.
LOAD DATA LOCAL INFILE 'C://Users/Michael/Downloads/Projeto-CellShop/item_venda.csv'
INTO TABLE tb_ItemVenda
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r\n'
(id_venda, id_produto, quantidade, subtotal);

SELECT *
FROM tb_ItemVenda;

	-- Inserindo registros na tabela tb_pagamento
INSERT INTO tb_pagamento (forma_pagamento, valor_pago, parcelas, id_venda) VALUES
('cartao', 4299.90, 1, 1), ('pix', 3399.00, 1, 2),
('cartao/parcelado', 5238.90, 6, 3), ('dinheiro', 419.89, 1, 4),
('cartao', 448.90, 1, 5), ('cartao/parcelado', 4038.90, 10, 6),
('dinheiro', 79.80, 1, 7), ('pix', 59.90, 1, 8),
('cartao/parcelado', 4299.90, 12, 9), ('cartao', 1749.40, 1, 10),
('pix', 139.90, 1, 11), ('cartao', 798.00, 1, 12),
('dinheiro', 49.90, 1, 13), ('cartao/parcelado', 3899.00, 6, 14),
('pix', 279.99, 1, 15), ('dinheiro', 119.80, 1, 16),
('cartao/parcelado', 4299.90, 10, 17), ('pix', 5199.00, 1, 18),
('cartao', 79.80, 1, 19), ('cartao/parcelado', 1699.50, 5, 20),
('pix', 4299.90, 1, 21), ('cartao', 1699.50, 1, 22),
('dinheiro', 279.99, 1, 23), ('cartao/parcelado', 399.00, 3, 24),
('pix', 139.90, 1, 25), ('cartao/parcelado', 5199.00, 6, 26),
('dinheiro', 3899.00, 1, 27), ('pix', 119.80, 1, 28),
('cartao', 49.90, 1, 29), ('cartao/parcelado', 79.80, 2, 30),
('dinheiro', 1699.50, 1, 31), ('cartao', 139.90, 1, 32),
('pix', 279.99, 1, 33), ('cartao/parcelado', 5199.00, 10, 34),
('pix', 399.00, 1, 35), ('cartao/parcelado', 3899.00, 12, 36),
('dinheiro', 99.80, 1, 37), ('pix', 39.90, 1, 38),
('cartao/parcelado', 4299.90, 8, 39), ('cartao', 59.90, 1, 40),
('pix', 5199.00, 1, 41), ('dinheiro', 279.99, 1, 42),
('cartao/parcelado', 399.00, 3, 43), ('pix', 139.90, 1, 44),
('dinheiro', 1699.50, 1, 45), ('cartao/parcelado', 4299.90, 6, 46),
('pix', 49.90, 1, 47), ('cartao', 3899.00, 1, 48),
('pix', 59.90, 1, 49), ('dinheiro', 79.80, 1, 50);

SELECT *
FROM tb_pagamento;

