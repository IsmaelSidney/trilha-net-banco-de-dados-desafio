-- Desafios trilha .NET BANCO DE DADOS 

-- 1 - Buscar o nome e ano dos filmes

SELECT nome,ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT nome , ano FROM Filmes ORDER BY  ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT nome, ano, duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997

SELECT nome, ano, duracao FROM Filmes WHERE Ano = '1997';

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT nome, ano, duracao FROM Filmes WHERE Ano > '2000';

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT nome, ano, duracao FROM Filmes WHERE Duracao BETWEEN '101' AND '151' ORDER BY Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT  Ano, COUNT(*) AS [Quantidade] FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT  Id, PrimeiroNome, UltimoNome , Genero FROM Atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT  Id, PrimeiroNome, UltimoNome , Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero

SELECT Nome, Genero FROM FilmesGenero  
	INNER JOIN Filmes  
	ON Filmes.Id = FilmesGenero.IdFilme	  
	INNER JOIN Generos 
	ON  Generos.Id = FilmesGenero.IdGenero;


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT Nome, Genero FROM FilmesGenero  
	INNER JOIN Filmes  
	ON Filmes.Id = FilmesGenero.IdFilme	  
	INNER JOIN Generos 
	ON  Generos.Id = FilmesGenero.IdGenero
	WHERE Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Nome, PrimeiroNome, UltimoNome, Papel  FROM Filmes  
	INNER JOIN ElencoFilme  
	ON Filmes.Id =  ElencoFilme.IdFilme
	INNER JOIN Atores 
	ON  Atores.Id = ElencoFilme.IdAtor;

