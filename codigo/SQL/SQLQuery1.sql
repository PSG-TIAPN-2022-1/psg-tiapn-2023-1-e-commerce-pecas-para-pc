--Vai ajudar no Power Bi, por criar o relacionamento entre tabelas
SELECT p.codigo, p.descricao, s.Nome
FROM produto p
INNER JOIN site s ON p.fk_Site_CNPJ = s.CNPJ;

SELECT f.Codigo, f.infoEmpresa, po.fk_Produto_Codigo
FROM fornecedor f
LEFT JOIN possuir po ON f.Codigo = po.fk_Fornecedor_Codigo;

SELECT i.Num_Item, p.descricao, n.NumeroNota
FROM Item_Nota i
INNER JOIN produto p ON i.fk_Produto_Codigo = p.codigo
INNER JOIN Nota_Fiscal n ON i.Num_Item = n.fk_Item_Nota_Num_Item;

SELECT nf.NumeroNota, c.ID_Usuario, cl.Nome
FROM Nota_Fiscal nf
INNER JOIN Compra c ON nf.fk_Compra_ID_Usuario = c.ID_Usuario
INNER JOIN Cliente cl ON nf.fk_Cliente_CPF = cl.CPF;


SELECT SUM(quantidadeEmEstoque) AS TotalEstoque
FROM produto;

SELECT SUM(PrecoTotal) AS TotalGasto
FROM Nota_Fiscal
WHERE fk_Cliente_CPF = '1234567890';

--Esses doi vao contar coisas para ajudar no futuro do Power BI
SELECT COUNT(*) AS TotalProdutos
FROM produto;

SELECT COUNT(DISTINCT fk_Cliente_CPF) AS TotalClientes
FROM Nota_Fiscal;

--Ideal para saber informacoes do cliente e eidade do público alvo
--Calcula a media da idade dos clientes
SELECT AVG(Idade) AS MediaIdade
FROM Cliente;

--Para encontrar a idade máxima entre os clientes
SELECT MAX(Idade) AS IdadeMaxima
FROM Cliente;
--Para encontrar a idade mínima entre os clientes
SELECT MIN(Idade) AS IdadeMinima
FROM Cliente;

--Essa consulta irá agrupar os produtos pelo nome e contar quantas vezes cada nome aparece na tabela. Em seguida, irá ordenar os resultados pelo número de ocorrências em ordem decrescente.
SELECT Nome, COUNT(*) AS Quantidade
FROM produto
GROUP BY descricao
ORDER BY Quantidade DESC;

--A cláusula WHERE foi adicionada para filtrar os resultados em que a descrição comece com "NomeDoProduto".
SELECT descricao, SUM(escolhas) AS TotalEscolhas
FROM produto
WHERE descricao LIKE 'HD%'
  AND precoUnidade > 50.0
GROUP BY descricao
ORDER BY TotalEscolhas DESC;