-- Inserir dados fictícios na tabela "site"
INSERT INTO site (CNPJ, Nome) VALUES ('123456789', 'Site A');
INSERT INTO site (CNPJ, Nome) VALUES ('987654321', 'Site B');
INSERT INTO site (CNPJ, Nome) VALUES ('654321987', 'Site C');

-- Inserir dados fictícios na tabela "produto"
INSERT INTO produto (codigo, descricao, precoUnidade, quantidadeEmEstoque, fk_Site_CNPJ) VALUES (1, 'Produto A', 10.99, 50, '123456789');
INSERT INTO produto (codigo, descricao, precoUnidade, quantidadeEmEstoque, fk_Site_CNPJ) VALUES (2, 'Produto B', 20.99, 100, '123456789');
INSERT INTO produto (codigo, descricao, precoUnidade, quantidadeEmEstoque, fk_Site_CNPJ) VALUES (3, 'Produto C', 15.99, 75, '987654321');

-- Inserir dados fictícios na tabela "fornecedor"
INSERT INTO fornecedor (Codigo, infoEmpresa) VALUES (1, 'Empresa A');
INSERT INTO fornecedor (Codigo, infoEmpresa) VALUES (2, 'Empresa B');
INSERT INTO fornecedor (Codigo, infoEmpresa) VALUES (3, 'Empresa C');

-- Inserir dados fictícios na tabela "possuir"
INSERT INTO possuir (fk_Produto_Codigo, fk_Fornecedor_Codigo) VALUES (1, 1);
INSERT INTO possuir (fk_Produto_Codigo, fk_Fornecedor_Codigo) VALUES (1, 2);
INSERT INTO possuir (fk_Produto_Codigo, fk_Fornecedor_Codigo) VALUES (2, 1);

-- Inserir dados fictícios na tabela "paginas"
INSERT INTO paginas (Funcoes, fk_Site_CNPJ) VALUES ('Função A', '123456789');
INSERT INTO paginas (Funcoes, fk_Site_CNPJ) VALUES ('Função B', '123456789');
INSERT INTO paginas (Funcoes, fk_Site_CNPJ) VALUES ('Função C', '987654321');

-- Inserir dados fictícios na tabela "Item_Nota"
INSERT INTO Item_Nota (Num_Item, Qtde, fk_Produto_Codigo) VALUES (1, 2, 1);
INSERT INTO Item_Nota (Num_Item, Qtde, fk_Produto_Codigo) VALUES (2, 3, 2);
INSERT INTO Item_Nota (Num_Item, Qtde, fk_Produto_Codigo) VALUES (3, 1, 3);

-- Inserir dados fictícios na tabela "Compra"
INSERT INTO Compra (ID_Usuario, Pagamento) VALUES ('user1', 'Cartão de Crédito');
INSERT INTO Compra (ID_Usuario, Pagamento) VALUES ('user2', 'Boleto');
INSERT INTO Compra (ID_Usuario, Pagamento) VALUES ('user3', 'PayPal');

-- Inserir dados fictícios na tabela "Cliente" 
INSERT INTO Cliente (CPF, Nome, DataNascimento, Idade, Endereco, Telefone) VALUES ('11111111111', 'Cliente A', '2000-01-01', 23, 'Rua A', '1111111111');
INSERT INTO Cliente (CPF, Nome, DataNascimento, Idade, Endereco, Telefone) VALUES ('22222222222', 'Cliente B', '1995-05-10', 28, 'Rua B', '2222222222');
INSERT INTO Cliente (CPF, Nome, DataNascimento, Idade, Endereco, Telefone) VALUES ('33333333333', 'Cliente C', '1988-12-15', 33, 'Rua C', '3333333333');

-- Inserir dados fictícios na tabela "Ajuda"
INSERT INTO Ajuda (ID_Produto) VALUES ('abc123');
INSERT INTO Ajuda (ID_Produto) VALUES ('def456');
INSERT INTO Ajuda (ID_Produto) VALUES ('ghi789');

-- Inserir dados fictícios na tabela "Area_Usuario"
INSERT INTO Area_Usuario (ID_Usuario) VALUES ('user1');
INSERT INTO Area_Usuario (ID_Usuario) VALUES ('user2');
INSERT INTO Area_Usuario (ID_Usuario) VALUES ('user3');

-- Inserir dados fictícios na tabela "Pesquisa"
INSERT INTO Pesquisa (ID_Produto) VALUES (1);
INSERT INTO Pesquisa (ID_Produto) VALUES (2);
INSERT INTO Pesquisa (ID_Produto) VALUES (3);

-- Inserir dados fictícios na tabela "Nota_Fiscal"
INSERT INTO Nota_Fiscal (Data, NumeroNota, PrecoTotal, fk_Item_Nota_Num_Item, fk_Compra_ID_Usuario, fk_Cliente_CPF) VALUES ('2023-01-01', 1, 50.99, 1, 'user1', '11111111111');
INSERT INTO Nota_Fiscal (Data, NumeroNota, PrecoTotal, fk_Item_Nota_Num_Item, fk_Compra_ID_Usuario, fk_Cliente_CPF) VALUES ('2023-02-01', 2, 75.50, 2, 'user2', '22222222222');
INSERT INTO Nota_Fiscal (Data, NumeroNota, PrecoTotal, fk_Item_Nota_Num_Item, fk_Compra_ID_Usuario, fk_Cliente_CPF) VALUES ('2023-03-01', 3, 30.25, 3, 'user3', '33333333333');