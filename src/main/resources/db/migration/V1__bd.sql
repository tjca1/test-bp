
CREATE TABLE categoria (
    id int NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE cliente (
    id int NOT NULL AUTO_INCREMENT,
    nome varchar(100) NOT NULL,
email varchar(55) ,
senha varchar(200),
rua varchar(200),
cidade varchar(55),
bairro varchar(55) ,
cep varchar(25) ,
estado varchar(20) ,
    PRIMARY KEY (id)
);

CREATE TABLE pedidos (
    id int NOT NULL AUTO_INCREMENT,
    data timestamp NOT NULL,
status varchar(55) ,
idCliente int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT FK_CLIENTE FOREIGN KEY (idCliente) REFERENCES cliente (id)

);


CREATE TABLE produto (
    id int NOT NULL AUTO_INCREMENT,
idCategoria int NOT NULL, 
    produto varchar(255) NOT NULL,
preco decimal(19,2) ,
    quantidade int ,
descricao varchar(255),
foto varchar(255),
PRIMARY KEY (id),
    CONSTRAINT FK_CATEGORIA FOREIGN KEY (idCategoria) REFERENCES categoria (id)
);

CREATE TABLE pedidos_itens (
    id int NOT NULL AUTO_INCREMENT,
idPedido int NOT NULL, 
    idProduto int NOT NULL, 
produto varchar(255) NOT NULL,
    quantidade int ,
valor decimal(19,2) ,
subtotal decimal(19,2) ,
PRIMARY KEY (id),
CONSTRAINT FK_PEDIDO FOREIGN KEY (idPedido) REFERENCES pedidos (id),
    CONSTRAINT FK_PRODUTO FOREIGN KEY (idProduto) REFERENCES produto (id)
);

INSERT INTO categoria (id,nome) VALUES (1 ,'Animais');
INSERT INTO categoria (id,nome) VALUES (2 ,'Arte e Artesanato');
INSERT INTO categoria (id,nome) VALUES (3 ,'Artigos Religiosos');
INSERT INTO categoria (id,nome) VALUES (4 ,'Brinquedos');
INSERT INTO categoria (id,nome) VALUES (5 ,'Indústria e Comércio');
INSERT INTO categoria (id,nome) VALUES (6 ,'Casa Móveis e Decoração');
INSERT INTO categoria (id,nome) VALUES (7 ,'Cartão de Visita');
INSERT INTO categoria (id,nome) VALUES (8 ,'Celular e Telefone');
INSERT INTO categoria (id,nome) VALUES (9 ,'Classificados e Serviços');
INSERT INTO categoria (id,nome) VALUES (10,'Diversos e Outros');
INSERT INTO categoria (id,nome) VALUES (11,'Eletrônicos, Áudio e Vídeo');
INSERT INTO categoria (id,nome) VALUES (12,'Eletrodomésticos');
INSERT INTO categoria (id,nome) VALUES (13,'Esportes');
INSERT INTO categoria (id,nome) VALUES (14,'Games e Jogos');
INSERT INTO categoria (id,nome) VALUES (15,'Imoveis');
INSERT INTO categoria (id,nome) VALUES (16,'Informática');
INSERT INTO categoria (id,nome) VALUES (17,'Instrumentos Musicais');
INSERT INTO categoria (id,nome) VALUES (18,'Livros');
INSERT INTO categoria (id,nome) VALUES (19,'Música');
INSERT INTO categoria (id,nome) VALUES (20,'Mão de Obra');
INSERT INTO categoria (id,nome) VALUES (21,'Peças e Acessórios - Veículos');
INSERT INTO categoria (id,nome) VALUES (22,'Prestadores de Serviços');
INSERT INTO categoria (id,nome) VALUES (23,'Profissionais Liberais');
INSERT INTO categoria (id,nome) VALUES (24,'Propagandas');
INSERT INTO categoria (id,nome) VALUES (25,'Saúde e Beleza');
INSERT INTO categoria (id,nome) VALUES (26,'Uso Pessoal');
INSERT INTO categoria (id,nome) VALUES (27,'Utensílios Domésticos');
INSERT INTO categoria (id,nome) VALUES (28,'Veículos');

INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (1 , 'rman','email@nada.com','RAFAEL NETO DA SILVA ODO','Rua Germano Vítor dos Santos    , 45' ,'São Paulo' , 'SP'       ,'Iguatemi‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (2 , 'ucín','email@nada.com','RAFAEL PINHEIRO FERREIRA','Rua Glucínio                , 46' ,'São Paulo' , 'SP'        ,'Ipiranga‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (3 , 'lson','email@nada.com','RICARDO JOÃO DALFOVO ODO','Rua Nelson Ferreira            , 83' ,'São Paulo' , 'SP'    ,'Itaim Bibi‎          ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (4 , 'odom','email@nada.com','SARAH DENARDI SCHEFFER O','Rua Clodomiro Pinheiro        , 22' ,'São Paulo' , 'SP'        ,'Itaim Paulista‎      ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (5 , 'í­li','email@nada.com','SARITA SAVI GUISSO ODONT','Rua Emí­lio Retrosi            , 37' ,'São Paulo' , 'SP'    ,'Itaquera‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (6 , 'Antô','email@nada.com','THAISE MEDEIROS MAFRA OD','Praça Antônio Pereira Martins, 93' ,'São Paulo' , 'SP'        ,'Jabaquara‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (7 , 'mend','email@nada.com','ANDREIA APARECIDA DE GOI','Rua Comendador Assad Abdalla, 6 ' ,'São Paulo' , 'SP'        ,'Jaçanã‎              ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (8 , 'roVe','email@nada.com','CARLA QUELI MELCHIOR PSI','Rua Ouro Verde                , 84' ,'São Paulo' , 'SP'        ,'Jaguara‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (9 , 'sada','email@nada.com','DEBORA WALTER DE LIMA PS','Rua Casa da Boavista        , 27' ,'São Paulo' , 'SP'        ,'Jaguaré             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (10, 'hnRe','email@nada.com','DEISE ANTUNES BORTOLUZZI','Rua John Redford            , 64' ,'São Paulo' , 'SP'        ,'Jaraguá‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (11, 'aNaz','email@nada.com','FABÍOLA COFERI PSICÓLOGO','Avenida Nazaré                , 25' ,'São Paulo' , 'SP'        ,'Jardim Ângela‎       ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (12, 'aAde','email@nada.com','HEIDI APARECID DE BARROS','Avenida Adelino Jorge Montenegro, 57' ,'São Paulo' , 'SP'       ,'Jardim Helena‎       ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (13, 'nald','email@nada.com','JOSYANNE BIANCA LIMA PSI','Rua Rynaldo Borgianni        , 72' ,'São Paulo' , 'SP'        ,'Jardim Paulista‎     ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (14, 'vore','email@nada.com','JULIA DE SOUSA RODRIGUES','Rua Arvore da Cera            , 43' ,'São Paulo' , 'SP'        ,'Jardim São Luís‎     ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (15, 'ioli','email@nada.com','JULIANO RIBEIRO MARQUES ','Rua Acioli Monteiro            , 86' ,'São Paulo' , 'SP'    ,'Lapa‎                ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (16, 'nuel','email@nada.com','LAISA REGINA CHAVES PSIC','Rua Manuel Teles Vitancos    , 40' ,'São Paulo' , 'SP'        ,'Liberdade‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (17, 'tôni','email@nada.com','MARA CECILIA NUNES DE LI','Rua Antônio Mariani            , 96' ,'São Paulo' , 'SP'    ,'Limão‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (18, 'burn','email@nada.com','MARIA DA LUZ FAGUNDES PS','Rua Tiburno                    , 61' ,'São Paulo' , 'SP'    ,'Mandaqui‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (19, 'nces','email@nada.com','NAYANARA MARIA REBELLO V','Rua Venceslau José Bernardes, 81' ,'São Paulo' , 'SP'        ,'Marsilac‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (20, 'aJoã','email@nada.com','POLLYANA MULLER DA SILVA','Avenida João Barreto de Menezes, 62' ,'São Paulo' , 'SP'    ,'Moema‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (21, 'João','email@nada.com','RENAN JEREMIAS CARVALHO ','Praça João Paulo Meira        , 74' ,'São Paulo' , 'SP'        ,'Mooca‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (22, 'bens','email@nada.com','SAMANA CARDOSO PSICÓLOGO','Rua Rubens Mascarenhas        , 89' ,'São Paulo' , 'SP'        ,'Morumbi‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (23, 'Euri','email@nada.com','SAMARA PEREIRA OLIBONI P','Viela Eurides da Silva Carvalho, 11' ,'São Paulo' , 'SP'    ,'Parelheiros‎         ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (24, 'saQu','email@nada.com','THIAGO RONAN TIGRE DA SI','Travessa Quatro de Setembro    , 95' ,'São Paulo' , 'SP'    ,'Pari‎                ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (25, 'ldad','email@nada.com','ARI FERNANDES SERVENTE D','Rua Soldado José Reymão        , 53' ,'São Paulo' , 'SP'    ,'Parque do Carmo‎     ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (26, 'avod','email@nada.com','CLENILSON MUSSANIK DE LI','Rua Cravo do Campo            , 1 ' ,'São Paulo' , 'SP'        ,'Penha‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (27, 'saTr','email@nada.com','JOSE CARLOS RODRIGUES ME','Travessa Tres Pingos Dagua    , 78' ,'São Paulo' , 'SP'        ,'Perdizes‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (28, 'acar','email@nada.com','FABIANO FINGER SANTOS O ','Rua Itacaranha                , 42' ,'São Paulo' , 'SP'        ,'Pinheiros‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (29, 'rcí­','email@nada.com','FERNANDA REGINA LOTTI OD','Rua Hercí­lio Luz            , 35' ,'São Paulo' , 'SP'        ,'Ponte Rasa‎          ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (30, 'roró','email@nada.com','FRANCIANE GOMES ODONTOLÓ','Rua Xororó                    , 70' ,'São Paulo' , 'SP'        ,'Raposo Tavares‎      ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (31, 'Mont','email@nada.com','GABRIELA REBÊLO ODONTOLÓ','Praça Monteiro Lobato        , 87' ,'São Paulo' , 'SP'        ,'República‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (32, 'late','email@nada.com','GUILHERME AUGUSTO TREVIS','Rua Galatea                    , 82' ,'São Paulo' , 'SP'    ,'Rio Pequeno‎         ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (33, 'Madr','email@nada.com','JACKELINE DELITSCH ODONT','Praça Madre Maria Josefina Villa, 36' ,'São Paulo' , 'SP'       ,'Sacomã‎              ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (34, 'nana','email@nada.com','JOCIE GERALDO FRATTINI O','Rua Banana-Branca            , 29' ,'São Paulo' , 'SP'        ,'Santa Cecília       ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (35, 'mini','email@nada.com','JONATHAN WOLINGER DA ROC','Rua Dominique Lagru            , 39' ,'São Paulo' , 'SP'    ,'Santana‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (36, 'vaOl','email@nada.com','JULIANA OLIVEIRA FORNARI','Rua Nova Olinda do Norte    , 91' ,'São Paulo' , 'SP'        ,'Santo Amaro‎         ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (37, 'oloP','email@nada.com','KEYLLA WITTMANN ODONTOLÓ','Rua Paolo Porpora            , 30' ,'São Paulo' , 'SP'        ,'São Domingos‎        ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (38, 'saBo','email@nada.com','LAURA CRISTINA CAZZAMALL','Travessa Bom Jesus do Norte    , 5 ' ,'São Paulo' , 'SP'    ,'São Lucas‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (39, 'uloB','email@nada.com','LUANA PARISOTTO ODONTOLÓ','Rua Paulo Bastide            , 32' ,'São Paulo' , 'SP'        ,'São Mateus          ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (40, 'oGua','email@nada.com','LUCIANO FERNANDES VALOTA','Viaduto Guadalajara            , 51' ,'São Paulo' , 'SP'    ,'São Miguel Paulista‎ ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (41, 'dreÂ','email@nada.com','LUCIANO MENEGAT COLOMBEL','Rua Padre Ângelo Gioielli    , 9 ' ,'São Paulo' , 'SP'        ,'São Rafael‎          ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (42, 'géli','email@nada.com','LUIZ EDUARDO CORREA RODR','Rua Angélicas                , 68' ,'São Paulo' , 'SP'        ,'Sapopemba‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (43, 'lfor','email@nada.com','LUIZ FELIPE SANTOS PEREI','Rua Belfort Roxo            , 67' ,'São Paulo' , 'SP'        ,'Saúde‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (44, 'ací­','email@nada.com','LUIZ OMAR WEILLER ODONTO','Rua Otací­lio Gomes            , 44' ,'São Paulo' , 'SP'    ,'Sé‎                  ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (45, 'toSa','email@nada.com','MARCOS VINICIUS PARISOTT','Rua Alto Santa Maria        , 31' ,'São Paulo' , 'SP'        ,'Tatuapé‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (46, 'ldom','email@nada.com','MARCUS PALMA NUNES ODONT','Rua Valdomiro Urbani        , 71' ,'São Paulo' , 'SP'        ,'Tremembé‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (47, 'saJa','email@nada.com','MARIANA MATOS KOWALSKI O','Travessa Jaime Eustáquio Pacheco, 75' ,'São Paulo' , 'SP'       ,'Tucuruvi            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (48, 'agua','email@nada.com','MARIANE VENANCIO ANDRADE','Rua Chaguaramas                , 80' ,'São Paulo' , 'SP'    ,'Vila Andrade‎        ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (49, 'rman','email@nada.com','RAFAEL NETO DA SILVA ODO','Rua Germano Vítor dos Santos    , 45' ,'São Paulo' , 'SP'       ,'Iguatemi‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (50, 'ucín','email@nada.com','RAFAEL PINHEIRO FERREIRA','Rua Glucínio                , 46' ,'São Paulo' , 'SP'        ,'Ipiranga‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (51, 'lson','email@nada.com','RICARDO JOÃO DALFOVO ODO','Rua Nelson Ferreira            , 83' ,'São Paulo' , 'SP'    ,'Itaim Bibi‎          ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (52, 'odom','email@nada.com','SARAH DENARDI SCHEFFER O','Rua Clodomiro Pinheiro        , 22' ,'São Paulo' , 'SP'        ,'Itaim Paulista‎      ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (53, 'í­li','email@nada.com','SARITA SAVI GUISSO ODONT','Rua Emí­lio Retrosi            , 37' ,'São Paulo' , 'SP'    ,'Itaquera‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (54, 'Antô','email@nada.com','THAISE MEDEIROS MAFRA OD','Praça Antônio Pereira Martins, 93' ,'São Paulo' , 'SP'        ,'Jabaquara‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (55, 'mend','email@nada.com','ANDREIA APARECIDA DE GOI','Rua Comendador Assad Abdalla, 6 ' ,'São Paulo' , 'SP'        ,'Jaçanã‎              ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (56, 'roVe','email@nada.com','CARLA QUELI MELCHIOR PSI','Rua Ouro Verde                , 84' ,'São Paulo' , 'SP'        ,'Jaguara‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (57, 'sada','email@nada.com','DEBORA WALTER DE LIMA PS','Rua Casa da Boavista        , 27' ,'São Paulo' , 'SP'        ,'Jaguaré             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (58, 'hnRe','email@nada.com','DEISE ANTUNES BORTOLUZZI','Rua John Redford            , 64' ,'São Paulo' , 'SP'        ,'Jaraguá‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (59, 'aNaz','email@nada.com','FABÍOLA COFERI PSICÓLOGO','Avenida Nazaré                , 25' ,'São Paulo' , 'SP'        ,'Jardim Ângela‎       ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (60, 'aAde','email@nada.com','HEIDI APARECID DE BARROS','Avenida Adelino Jorge Montenegro, 57' ,'São Paulo' , 'SP'       ,'Jardim Helena‎       ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (61, 'nald','email@nada.com','JOSYANNE BIANCA LIMA PSI','Rua Rynaldo Borgianni        , 72' ,'São Paulo' , 'SP'        ,'Jardim Paulista‎     ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (62, 'vore','email@nada.com','JULIA DE SOUSA RODRIGUES','Rua Arvore da Cera            , 43' ,'São Paulo' , 'SP'        ,'Jardim São Luís‎     ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (63, 'ioli','email@nada.com','JULIANO RIBEIRO MARQUES ','Rua Acioli Monteiro            , 86' ,'São Paulo' , 'SP'    ,'Lapa‎                ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (64, 'nuel','email@nada.com','LAISA REGINA CHAVES PSIC','Rua Manuel Teles Vitancos    , 40' ,'São Paulo' , 'SP'        ,'Liberdade‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (65, 'tôni','email@nada.com','MARA CECILIA NUNES DE LI','Rua Antônio Mariani            , 96' ,'São Paulo' , 'SP'    ,'Limão‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (66, 'burn','email@nada.com','MARIA DA LUZ FAGUNDES PS','Rua Tiburno                    , 61' ,'São Paulo' , 'SP'    ,'Mandaqui‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (67, 'nces','email@nada.com','NAYANARA MARIA REBELLO V','Rua Venceslau José Bernardes, 81' ,'São Paulo' , 'SP'        ,'Marsilac‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (68, 'aJoã','email@nada.com','POLLYANA MULLER DA SILVA','Avenida João Barreto de Menezes, 62' ,'São Paulo' , 'SP'    ,'Moema‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (69, 'João','email@nada.com','RENAN JEREMIAS CARVALHO ','Praça João Paulo Meira        , 74' ,'São Paulo' , 'SP'        ,'Mooca‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (70, 'bens','email@nada.com','SAMANA CARDOSO PSICÓLOGO','Rua Rubens Mascarenhas        , 89' ,'São Paulo' , 'SP'        ,'Morumbi‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (71, 'Euri','email@nada.com','SAMARA PEREIRA OLIBONI P','Viela Eurides da Silva Carvalho, 11' ,'São Paulo' , 'SP'    ,'Parelheiros‎         ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (72, 'saQu','email@nada.com','THIAGO RONAN TIGRE DA SI','Travessa Quatro de Setembro    , 95' ,'São Paulo' , 'SP'    ,'Pari‎                ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (73, 'ldad','email@nada.com','ARI FERNANDES SERVENTE D','Rua Soldado José Reymão        , 53' ,'São Paulo' , 'SP'    ,'Parque do Carmo‎     ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (74, 'avod','email@nada.com','CLENILSON MUSSANIK DE LI','Rua Cravo do Campo            , 1 ' ,'São Paulo' , 'SP'        ,'Penha‎               ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (75, 'saTr','email@nada.com','JOSE CARLOS RODRIGUES ME','Travessa Tres Pingos Dagua    , 78' ,'São Paulo' , 'SP'        ,'Perdizes‎            ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (76, 'acar','email@nada.com','FABIANO FINGER SANTOS O ','Rua Itacaranha                , 42' ,'São Paulo' , 'SP'        ,'Pinheiros‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (77, 'rcí­','email@nada.com','FERNANDA REGINA LOTTI OD','Rua Hercí­lio Luz            , 35' ,'São Paulo' , 'SP'        ,'Ponte Rasa‎          ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (78, 'roró','email@nada.com','FRANCIANE GOMES ODONTOLÓ','Rua Xororó                    , 70' ,'São Paulo' , 'SP'        ,'Raposo Tavares‎      ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (79, 'Mont','email@nada.com','GABRIELA REBÊLO ODONTOLÓ','Praça Monteiro Lobato        , 87' ,'São Paulo' , 'SP'        ,'República‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (80, 'late','email@nada.com','GUILHERME AUGUSTO TREVIS','Rua Galatea                    , 82' ,'São Paulo' , 'SP'    ,'Rio Pequeno‎         ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (81, 'Madr','email@nada.com','JACKELINE DELITSCH ODONT','Praça Madre Maria Josefina Villa, 36' ,'São Paulo' , 'SP'       ,'Sacomã‎              ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (82, 'nana','email@nada.com','JOCIE GERALDO FRATTINI O','Rua Banana-Branca            , 29' ,'São Paulo' , 'SP'        ,'Santa Cecília       ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (83, 'mini','email@nada.com','JONATHAN WOLINGER DA ROC','Rua Dominique Lagru            , 39' ,'São Paulo' , 'SP'    ,'Santana‎             ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (84, 'vaOl','email@nada.com','JULIANA OLIVEIRA FORNARI','Rua Nova Olinda do Norte    , 91' ,'São Paulo' , 'SP'        ,'Santo Amaro‎         ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (85, 'oloP','email@nada.com','KEYLLA WITTMANN ODONTOLÓ','Rua Paolo Porpora            , 30' ,'São Paulo' , 'SP'        ,'São Domingos‎        ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (86, 'saBo','email@nada.com','LAURA CRISTINA CAZZAMALL','Travessa Bom Jesus do Norte    , 5 ' ,'São Paulo' , 'SP'    ,'São Lucas‎           ','5465465465445');
INSERT INTO  cliente (id ,senha, email, nome , rua, cidade, estado ,bairro, cep)  VALUES (87, 'uloB','email@nada.com','LUANA PARISOTTO ODONTOLÓ','Rua Paulo Bastide            , 32' ,'São Paulo' , 'SP'        ,'São Mateus          ','5465465465445');

INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,14);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,24);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,26);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,24);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,26);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,34);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,46);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,44);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,3);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,6);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,46);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,33);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,33);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,8);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,3) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,3) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,4) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,14);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,24);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,26);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,3) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,3) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,6) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,14);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,24);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,26);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,8) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,8) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,14);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,24);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,26);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,6) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,14);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,16);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,13);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,23);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,24);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,26);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,4) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,3) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,50);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,77);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,66);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CONFIRMADO'         ,9) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'NAO_EXISTE_CLIENTE' ,22);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'S/PRODUTO'          ,8) ;
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'ENTREGUE'           ,41);
INSERT INTO  pedidos (data, status, idCliente) VALUES(CURRENT_TIMESTAMP , 'CANCELADO'          ,6) ;


INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(10, 1  ,'Cpu Dual Core - Hd80 - 2gb - Wifi + Frete Grátis!!          ',   630.00   ,1 , 'Cpu Dual Core - Hd80 - 2gb - Wifi + Frete Grátis!!          ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(11, 2  ,'Cpu Dual Core - Hd80 - 2gb - Wifi + Frete Grátis!!          ',   1.979    ,1 , 'Cpu Dual Core - Hd80 - 2gb - Wifi + Frete Grátis!!          ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(12, 3  ,'Pc Completo Gamer Monitor 19.5 Led Hdmi Wifi 8gb + 30       ',   199.979  ,1 , 'Pc Completo Gamer Monitor 19.5 Led Hdmi Wifi 8gb + 30       ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(13, 4  ,'Pc Completo Gamer Monitor 19.5 Led Hdmi Wifi 8gb            ',   188.389  ,1 , 'Pc Completo Gamer Monitor 19.5 Led Hdmi Wifi 8gb            ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(14, 5  ,'Pc Cpu Computador Intel Core I5 + Ssd240 + 8gb              ',   115.75   ,1 , 'Pc Cpu Computador Intel Core I5 + Ssd240 + 8gb              ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(15, 6  ,'Pc Cpu Computador Intel Core I5 + Ssd240 + 8gb              ',   444.66   ,1 , 'Pc Cpu Computador Intel Core I5 + Ssd240 + 8gb              ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(16, 7  ,'Cpu Dell Optplex 755 E8400 3.0 4gb Hd 80 #maisbarato        ',   819.99   ,1 , 'Cpu Dell Optplex 755 E8400 3.0 4gb Hd 80 #maisbarato        ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(17, 8  ,'Cpu Dell Optplex 755 E8400 3.0 4gb Hd 80 #maisbarato        ',   584.33   ,1 , 'Cpu Dell Optplex 755 E8400 3.0 4gb Hd 80 #maisbarato        ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(18, 9  ,'Pc Cpu Computador Intel Core I5 + 500 Hd + 4gb              ',   509.00   ,1 , 'Pc Cpu Computador Intel Core I5 + 500 Hd + 4gb              ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(19, 10 ,'Pc Cpu Computador Intel Core I5 + 500 Hd + 4gb              ',   408.00   ,1 , 'Pc Cpu Computador Intel Core I5 + 500 Hd + 4gb              ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(20, 11 ,'Pc Gamer Completo Amd 3.9ghz 8gb Monitor 18.5 Desconto +nf  ',   901.00   ,1 , 'Pc Gamer Completo Amd 3.9ghz 8gb Monitor 18.5 Desconto +nf  ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(21, 12 ,'Pc Gamer Completo Amd 3.9ghz 8gb Monitor 18.5 Desconto +nf  ',   304.00   ,1 , 'Pc Gamer Completo Amd 3.9ghz 8gb Monitor 18.5 Desconto +nf  ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(22, 13 ,'Cpu Dell Optplex 755 Core 2 Duo 2.9ghz 4gb Hd 80 #maisbar   ',   571.99   ,1 , 'Cpu Dell Optplex 755 Core 2 Duo 2.9ghz 4gb Hd 80 #maisbar   ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(23, 14 ,'Cpu Dell Optplex 755 Core 2 Duo 2.9ghz 4gb Hd 80 #maisbarato',   800.00   ,1 , 'Cpu Dell Optplex 755 Core 2 Duo 2.9ghz 4gb Hd 80 #maisbarato' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(24, 15 ,'Cpu Core 2 Duo E6300 2gb 80gb Wifi Windows 7 Original       ',   439.99   ,1 , 'Cpu Core 2 Duo E6300 2gb 80gb Wifi Windows 7 Original       ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(25, 16 ,'Cpu Core 2 Duo E6300 2gb 80gb Wifi Windows 7 Original       ',   600.22   ,1 , 'Cpu Core 2 Duo E6300 2gb 80gb Wifi Windows 7 Original       ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(26, 17 ,'Cpu Nova Core 2 Duo E8400 3.0 4gb De Ram Hd160 E Windows    ',   777.63   ,1 , 'Cpu Nova Core 2 Duo E8400 3.0 4gb De Ram Hd160 E Windows    ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(27, 18 ,'Cpu Nova Core 2 Duo E8400 3.0 4gb De Ram Hd160 E Windows 7c ',   19.99    ,1 , 'Cpu Nova Core 2 Duo E8400 3.0 4gb De Ram Hd160 E Windows 7c ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(28, 19 ,'Cpu Nova Intel Dual Core S/ Memória Hd 80gb # Promoção      ',   50.99    ,1 , 'Cpu Nova Intel Dual Core S/ Memória Hd 80gb # Promoção      ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(29, 20 ,'Cpu Nova Intel Dual Core S/ Memória Hd 80gb # Promoção      ',   49.99    ,1 , 'Cpu Nova Intel Dual Core S/ Memória Hd 80gb # Promoção      ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(30, 21 ,'Computador Completo Novo Core 2 Duo 4gb Hd 80gb Wifi#barato ',   739.98   ,1 , 'Computador Completo Novo Core 2 Duo 4gb Hd 80gb Wifi#barato ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(31, 22 ,'Computador Completo Novo Core 2 Duo 4gb Hd 80gb Wifi#barato ',   740.00   ,1 , 'Computador Completo Novo Core 2 Duo 4gb Hd 80gb Wifi#barato ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(32, 23 ,'Cpu Nova - Core 2 Duo E8400 3.0 4gb De Ram Hd80 E Windows 7 ',   649.99   ,1 , 'Cpu Nova - Core 2 Duo E8400 3.0 4gb De Ram Hd80 E Windows 7 ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(33, 24 ,'Cpu Nova - Core 2 Duo E8400 3.0 4gb De Ram Hd80 E Windows 7 ',   800.00   ,1 , 'Cpu Nova - Core 2 Duo E8400 3.0 4gb De Ram Hd80 E Windows 7 ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(34, 25 ,'Cpu Completa + Monitor 17 + Teclado E Mouse                 ',   619.89   ,1 , 'Cpu Completa + Monitor 17 + Teclado E Mouse                 ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(35, 26 ,'Pc Gamer Completo Teclado E Mouse Gamer Headset Monitor     ',   2.149    ,1 , 'Pc Gamer Completo Teclado E Mouse Gamer Headset Monitor     ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(36, 27 ,'Pc Gamer Completo Teclado E Mouse Gamer Headset Monitor 20  ',   649.99   ,1 , 'Pc Gamer Completo Teclado E Mouse Gamer Headset Monitor 20  ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(37, 28 ,'Pc Gamer Completo 8gb 1tb Monitor 18.5 Wide Geforce 710 2gb ',   2.449    ,1 , 'Pc Gamer Completo 8gb 1tb Monitor 18.5 Wide Geforce 710 2gb ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(38, 1  ,'Pc Gamer Completo 8gb 1tb Monitor 18.5 Wide Geforce 710 2gb ',   50.99    ,1 , 'Pc Gamer Completo 8gb 1tb Monitor 18.5 Wide Geforce 710 2gb ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(39, 2  ,'Cpu Pc Gamer Intel 8gb 500gb Geforce 2gb 128 Bits Hdmi      ',   1.399    ,1 , 'Cpu Pc Gamer Intel 8gb 500gb Geforce 2gb 128 Bits Hdmi      ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(40, 3  ,'Cpu Pc Gamer Intel 8gb 500gb Geforce 2gb 128 Bits Hdmi      ',   800.00   ,1 , 'Cpu Pc Gamer Intel 8gb 500gb Geforce 2gb 128 Bits Hdmi      ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(41, 4  ,'Computador Cpu Intel Core I7 + 8gb +hd 1tb                  ',   1.899    ,1 , 'Computador Cpu Intel Core I7 + 8gb +hd 1tb                  ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(42, 5  ,'Computador Cpu Intel Core I7 + 8gb +hd 1tb                  ',   800.00   ,1 , 'Computador Cpu Intel Core I7 + 8gb +hd 1tb                  ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(43, 6  ,'Cpu Dell Optplex 755 E8400 3.0 2gb Hd 80 + Teclado E Mouse  ',   499.99   ,1 , 'Cpu Dell Optplex 755 E8400 3.0 2gb Hd 80 + Teclado E Mouse  ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(44, 7  ,'Cpu Dell Optplex 755 E8400 3.0 2gb Hd 80 + Teclado E Mouse  ',   6000.00  ,1 , 'Cpu Dell Optplex 755 E8400 3.0 2gb Hd 80 + Teclado E Mouse  ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(45, 8  ,'Cpu Core I3, 4gb, 320gb + Limpa Estoque- Novo               ',   899.88   ,1 , 'Cpu Core I3, 4gb, 320gb + Limpa Estoque- Novo               ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(46, 9  ,'Cpu Core I3, 4gb, 320gb + Limpa Estoque- Novo               ',   589.00   ,1 , 'Cpu Core I3, 4gb, 320gb + Limpa Estoque- Novo               ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(47, 10 ,'Cpu Nova Core 2 Duo 3.0 4gb Hd 500gb Dvd Wifi C/ Windows 10 ',   689.00   ,1 , 'Cpu Nova Core 2 Duo 3.0 4gb Hd 500gb Dvd Wifi C/ Windows 10 ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(48, 11 ,'Cpu Nova Core 2 Duo 3.0 4gb Hd 500gb Dvd Wifi C/ Windows 10 ',   999.00   ,1 , 'Cpu Nova Core 2 Duo 3.0 4gb Hd 500gb Dvd Wifi C/ Windows 10 ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(49, 12 ,'Cpu Nova - Dual Core 3.0 4gb De Ram Hd80 Windows 7          ',   549.00   ,1 , 'Cpu Nova - Dual Core 3.0 4gb De Ram Hd80 Windows 7          ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(50, 13 ,'Cpu Nova - Dual Core 3.0 4gb De Ram Hd80 Windows 7          ',   888.00   ,1 , 'Cpu Nova - Dual Core 3.0 4gb De Ram Hd80 Windows 7          ' , 'produto.avatar.jpg');
INSERT INTO  produto (id,idCategoria, produto, preco, quantidade, descricao, foto) VALUES(51, 14 ,'Pc Cpu Desktop Hp Compaq 8000 Core 2 Duo 4gb 80gb Grav Wifi ',   479.00   ,1 , 'Pc Cpu Desktop Hp Compaq 8000 Core 2 Duo 4gb 80gb Grav Wifi ' , 'produto.avatar.jpg');


INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(1  , 10, 'Cpu Dual Core - Hd80 - 2gb - Wifi + Frete Grátis!!          ', 1 ,   630.00   ,630.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(2  , 11, 'Cpu Dual Core - Hd80 - 2gb - Wifi + Frete Grátis!!          ', 1 ,   1.979    ,1.979 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(3  , 12, 'Pc Completo Gamer Monitor 19.5 Led Hdmi Wifi 8gb + 30       ', 1 ,   199.97   ,199.97);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(4  , 13, 'Pc Completo Gamer Monitor 19.5 Led Hdmi Wifi 8gb            ', 1 ,   188.389  ,188.38);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(5  , 14, 'Pc Cpu Computador Intel Core I5 + Ssd240 + 8gb              ', 1 ,   115.75   ,115.75);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(6  , 15, 'Pc Cpu Computador Intel Core I5 + Ssd240 + 8gb              ', 1 ,   444.66   ,444.66);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(7  , 16, 'Cpu Dell Optplex 755 E8400 3.0 4gb Hd 80 #maisbarato        ', 1 ,   819.99   ,819.99);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(8  , 17, 'Cpu Dell Optplex 755 E8400 3.0 4gb Hd 80 #maisbarato        ', 1 ,   584.33   ,584.33);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(9  , 18, 'Pc Cpu Computador Intel Core I5 + 500 Hd + 4gb              ', 1 ,   509.00   ,509.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(10 , 19, 'Pc Cpu Computador Intel Core I5 + 500 Hd + 4gb              ', 1 ,   408.00   ,408.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(11 , 20, 'Pc Gamer Completo Amd 3.9ghz 8gb Monitor 18.5 Desconto +nf  ', 1 ,   901.00   ,901.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(12 , 21, 'Pc Gamer Completo Amd 3.9ghz 8gb Monitor 18.5 Desconto +nf  ', 1 ,   304.00   ,304.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(13 , 22, 'Cpu Dell Optplex 755 Core 2 Duo 2.9ghz 4gb Hd 80 #maisbar   ', 1 ,   571.99   ,571.99);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(14 , 23, 'Cpu Dell Optplex 755 Core 2 Duo 2.9ghz 4gb Hd 80 #maisbarato', 1 ,   800.00   ,800.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(15 , 24, 'Cpu Core 2 Duo E6300 2gb 80gb Wifi Windows 7 Original       ', 1 ,   439.99   ,439.99);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(16 , 25, 'Cpu Core 2 Duo E6300 2gb 80gb Wifi Windows 7 Original       ', 1 ,   600.22   ,600.22);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(17 , 26, 'Cpu Nova Core 2 Duo E8400 3.0 4gb De Ram Hd160 E Windows    ', 1 ,   777.63   ,777.63);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(18 , 27, 'Cpu Nova Core 2 Duo E8400 3.0 4gb De Ram Hd160 E Windows 7c ', 1 ,   19.99    ,19.99 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(19 , 28, 'Cpu Nova Intel Dual Core S/ Memória Hd 80gb # Promoção      ', 1 ,   50.99    ,50.99 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(20 , 29, 'Cpu Nova Intel Dual Core S/ Memória Hd 80gb # Promoção      ', 1 ,   49.99    ,49.99 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(21 , 30, 'Computador Completo Novo Core 2 Duo 4gb Hd 80gb Wifi#barato ', 1 ,   739.98   ,739.98);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(22 , 31, 'Computador Completo Novo Core 2 Duo 4gb Hd 80gb Wifi#barato ', 1 ,   740.00   ,740.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(23 , 32, 'Cpu Nova - Core 2 Duo E8400 3.0 4gb De Ram Hd80 E Windows 7 ', 1 ,   649.99   ,649.99);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(24 , 33, 'Cpu Nova - Core 2 Duo E8400 3.0 4gb De Ram Hd80 E Windows 7 ', 1 ,   800.00   ,800.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(25 , 34, 'Cpu Completa + Monitor 17 + Teclado E Mouse                 ', 1 ,   619.89   ,619.89);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(26 , 35, 'Pc Gamer Completo Teclado E Mouse Gamer Headset Monitor     ', 1 ,   2.149    ,2.149 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(27 , 36, 'Pc Gamer Completo Teclado E Mouse Gamer Headset Monitor 20  ', 1 ,   649.99   ,649.99);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(28 , 37, 'Pc Gamer Completo 8gb 1tb Monitor 18.5 Wide Geforce 710 2gb ', 1 ,   2.449    ,2.449 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(1  , 38, 'Pc Gamer Completo 8gb 1tb Monitor 18.5 Wide Geforce 710 2gb ', 1 ,   50.99    ,50.99 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(2  , 39, 'Cpu Pc Gamer Intel 8gb 500gb Geforce 2gb 128 Bits Hdmi      ', 1 ,   1.399    ,1.399 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(3  , 40, 'Cpu Pc Gamer Intel 8gb 500gb Geforce 2gb 128 Bits Hdmi      ', 1 ,   800.00   ,800.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(4  , 41, 'Computador Cpu Intel Core I7 + 8gb +hd 1tb                  ', 1 ,   1.899    ,1.899 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(5  , 42, 'Computador Cpu Intel Core I7 + 8gb +hd 1tb                  ', 1 ,   800.00   ,800.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(6  , 43, 'Cpu Dell Optplex 755 E8400 3.0 2gb Hd 80 + Teclado E Mouse  ', 1 ,   499.99   ,499.99);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(7  , 44, 'Cpu Dell Optplex 755 E8400 3.0 2gb Hd 80 + Teclado E Mouse  ', 1 ,   600.00   ,600.00 );
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(8  , 45, 'Cpu Core I3, 4gb, 320gb + Limpa Estoque- Novo               ', 1 ,   899.88   ,899.88);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(9  , 46, 'Cpu Core I3, 4gb, 320gb + Limpa Estoque- Novo               ', 1 ,   589.00   ,589.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(10 , 47, 'Cpu Nova Core 2 Duo 3.0 4gb Hd 500gb Dvd Wifi C/ Windows 10 ', 1 ,   689.00   ,689.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(11 , 48, 'Cpu Nova Core 2 Duo 3.0 4gb Hd 500gb Dvd Wifi C/ Windows 10 ', 1 ,   999.00   ,999.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(12 , 49, 'Cpu Nova - Dual Core 3.0 4gb De Ram Hd80 Windows 7          ', 1 ,   549.00   ,549.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(13 , 50, 'Cpu Nova - Dual Core 3.0 4gb De Ram Hd80 Windows 7          ', 1 ,   888.00   ,888.00);
INSERT INTO  pedidos_itens (idPedido, idProduto, produto, quantidade,valor,subtotal) VALUES(14 , 51, 'Pc Cpu Desktop Hp Compaq 8000 Core 2 Duo 4gb 80gb Grav Wifi ', 1 ,   479.00   ,479.00);

                                                                                          