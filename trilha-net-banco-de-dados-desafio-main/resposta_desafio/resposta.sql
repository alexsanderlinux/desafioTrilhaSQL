1 - SELECT Nome, Ano from Filmes f;  -- 1 - Buscar o nome e ano dos filmes
2 - SELECT Nome, Ano, Duracao from Filmes f order by Ano; -- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 
3 - SELECT Nome, Ano, Duracao from Filmes f WHERE id = 28; -- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
4 - SELECT Nome, Ano, Duracao from Filmes f WHERE Ano = 1997; -- 4 - Buscar os filmes lançados em 1997
5 - SELECT Nome, Ano, Duracao from Filmes f WHERE Ano > 2000; -- 5 - Buscar os filmes lançados APÓS o ano 2000
6 - SELECT Nome, Ano, Duracao from Filmes f WHERE Duracao > 100 AND Duracao < 150; -- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
7 - SELECT Ano, COUNT(Ano) as Quantidade  FROM Filmes f group by Ano ORDER by Quantidade desc; -- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
8 - SELECT * from Atores a WHERE Genero='M'; --8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
9 - SELECT * from Atores a WHERE Genero='F' ORDER by PrimeiroNome; --  9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
10 - SELECT f.Nome, g.Genero from Filmes f INNER JOIN FilmesGenero fg on f.id = fg.IdFilme inner join Generos g on fg.IdGenero = g.id;   -- 10 - Buscar o nome do filme e o gênero
11 - SELECT f.Nome, g.Genero from Filmes f INNER JOIN FilmesGenero fg on f.id = fg.IdFilme inner join Generos g on fg.IdGenero = g.id WHERE g.Genero ='Mistério'; -- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
12 - SELECT f.Nome, a.primeiroNome, a.ultimoNome, ef.papel from Filmes f INNER JOIN ElencoFilme ef on f.id = ef.IdFilme inner join Atores a on a.Id = ef.IdAtor; -- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel