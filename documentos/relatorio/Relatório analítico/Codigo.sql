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

