CREATE TABLE site (
    CNPJ VARCHAR(255) PRIMARY KEY,
    Nome NVARCHAR(MAX)
);

CREATE TABLE produto (
    codigo INT PRIMARY KEY,
    descricao NVARCHAR(255),
    precoUnidade DECIMAL(18, 2) NOT NULL,
    quantidadeEmEstoque INT,
    fk_Site_CNPJ VARCHAR(255),
    FOREIGN KEY (fk_Site_CNPJ) REFERENCES site(CNPJ)
);

CREATE TABLE fornecedor (
    Codigo INT PRIMARY KEY,
    infoEmpresa NVARCHAR(MAX)
);

CREATE TABLE possuir (
    fk_Produto_Codigo INT,
    fk_Fornecedor_Codigo INT,
    FOREIGN KEY (fk_Produto_Codigo) REFERENCES produto(codigo),
    FOREIGN KEY (fk_Fornecedor_Codigo) REFERENCES fornecedor(Codigo)
);

CREATE TABLE paginas (
    Funcoes NVARCHAR(MAX),
    fk_Site_CNPJ VARCHAR(255),
    FOREIGN KEY (fk_Site_CNPJ) REFERENCES site(CNPJ)
);

CREATE TABLE Item_Nota (
    Num_Item INT PRIMARY KEY,
    Qtde INT,
    fk_Produto_Codigo INT,
    FOREIGN KEY (fk_Produto_Codigo) REFERENCES produto(codigo)
);

CREATE TABLE Compra (
    ID_Usuario VARCHAR(255) PRIMARY KEY,
    Pagamento NVARCHAR(MAX)
);

CREATE TABLE Cliente (
    CPF VARCHAR(255) PRIMARY KEY,
    Nome NVARCHAR(MAX) NOT NULL,
    DataNascimento DATE NOT NULL,
    Idade INT NOT NULL,
    Endereco NVARCHAR(MAX) NOT NULL,
    Telefone VARCHAR(255) NOT NULL
);

CREATE TABLE Ajuda (
    ID_Produto VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Area_Usuario (
    ID_Usuario VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Pesquisa (
    ID_Produto INT PRIMARY KEY
);

CREATE TABLE Nota_Fiscal (
    Data DATE,
    NumeroNota INT PRIMARY KEY,
    PrecoTotal DECIMAL(18, 2) NOT NULL,
    fk_Item_Nota_Num_Item INT,
    fk_Compra_ID_Usuario VARCHAR(255),
    fk_Cliente_CPF VARCHAR(255),
    FOREIGN KEY (fk_Item_Nota_Num_Item) REFERENCES Item_Nota(Num_Item),
    FOREIGN KEY (fk_Compra_ID_Usuario) REFERENCES Compra(ID_Usuario),
    FOREIGN KEY (fk_Cliente_CPF) REFERENCES Cliente(CPF)
);

-- Criar índice na tabela "produto"
CREATE INDEX idx_produto_codigo ON produto(codigo);

-- Criar índice na tabela "Cliente"
CREATE INDEX idx_cliente_cpf ON Cliente(CPF);

