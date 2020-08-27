
--    Selecionando todas as colunas da tabela CITY

SELECT *
FROM CITY;

/*
    Selecionando todas as colunas da tabela CITY,
    onde o ContryCode é referente ao USA e 
    a população seja maior que 100000.
*/

SELECT *
FROM CITY
WHERE CountryCode = "USA" 
AND Population > 100000;


/*
    Selecionando nome das cidades da tabela CITY,
    onde o ContryCode é referente ao USA e 
    a população seja maior que 120000.
*/

SELECT Name
FROM CITY
WHERE CountryCode = "USA"
AND Population > 120000;


--   Selecionando a cidade com ID = 1661

SELECT *
FROM CITY
WHERE ID = 1661;



