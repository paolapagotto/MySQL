-- Descrevendo a tabela STATION

DESCRIBE station;

    ID int YES NULL 
    CITY varchar(21) YES NULL 
    STATE varchar(2) YES NULL 
    LAT_N decimal(21,10) YES NULL 
    LONG_W decimal(21,10) YES NULL  


-- Selecionando City e State da tabela Station

SELECT CITY, STATE
FROM STATION;

-- Selecionando cidades CITY distintas com ID par.

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID,2) = 0;

-- 

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

/* Selecionando na coluna CITY os tamanhos MIN e MAX de caracteres, ordenados alfabeticamente e por numeros de caracteres simultaneamente.
ex: ABC 3 PQR 3 ABCD 4 PQRS 4 ABCDE 5 PQRST 5 (...)*/

SELECT CITY, CHAR_LENGTH(CITY)
FROM STATION
ORDER BY CHAR_LENGTH(CITY) ASC, CITY ASC LIMIT 1;

SELECT CITY, CHAR_LENGTH(CITY)
FROM STATION
ORDER BY CHAR_LENGTH(CITY) DESC, CITY DESC LIMIT 1;

-- Selecionando cidades da coluna CITY que se iniciem por vogais e que não sejam duplicadas, ordenadas alfabeticamente

SELECT DISTINCT CITY
FROM STATION
WHERE
    (CITY LIKE 'A%' OR  
     CITY LIKE 'E%' OR
     CITY LIKE 'I%' OR
     CITY LIKE 'O%' OR
     CITY LIKE 'U%')
ORDER BY CITY;

-- Selecionando cidades da coluna CITY que terminem em vogais e que não sejam duplicadas, ordenadas alfabeticamente

SELECT DISTINCT CITY
FROM STATION
WHERE
    (CITY LIKE '%A' OR  
     CITY LIKE '%E' OR
     CITY LIKE '%I' OR
     CITY LIKE '%O' OR
     CITY LIKE '%U')
ORDER BY CITY;

-- Selecionando cidades da coluna CITY que iniciem e terminem em vogais e que não sejam duplicadas, ordenadas alfabeticamente

SELECT DISTINCT CITY
FROM STATION
WHERE
    (CITY LIKE 'A%' OR  
     CITY LIKE 'E%' OR
     CITY LIKE 'I%' OR
     CITY LIKE 'O%' OR
     CITY LIKE 'U%')
  AND
    (CITY LIKE '%A' OR  
     CITY LIKE '%E' OR
     CITY LIKE '%I' OR
     CITY LIKE '%O' OR
     CITY LIKE '%U') 
ORDER BY CITY;

-- Selecionando cidades da coluna CITY que NÃO se iniciem por vogais e que não sejam duplicadas, ordenadas alfabeticamente

SELECT DISTINCT CITY
FROM STATION
WHERE
    (CITY NOT LIKE 'A%' AND  
     CITY NOT LIKE 'E%' AND
     CITY NOT LIKE 'I%' AND
     CITY NOT LIKE 'O%' AND
     CITY NOT LIKE 'U%')
ORDER BY CITY;

-- Selecionando cidades da coluna CITY que NÃO terminem em vogais e que não sejam duplicadas, ordenadas alfabeticamente

SELECT DISTINCT CITY
FROM STATION
WHERE
    (CITY NOT LIKE '%A' AND  
     CITY NOT LIKE '%E' AND
     CITY NOT LIKE '%I' AND
     CITY NOT LIKE '%O' AND
     CITY NOT LIKE '%U')
ORDER BY CITY;

-- Selecionando cidades da coluna CITY que NAO iniciem ou NAO terminem em vogais e que não sejam duplicadas, ordenadas alfabeticamente

SELECT DISTINCT CITY
FROM STATION
WHERE
    (CITY NOT LIKE 'A%' AND  
     CITY NOT LIKE 'E%' AND
     CITY NOT LIKE 'I%' AND
     CITY NOT LIKE 'O%' AND
     CITY NOT LIKE 'U%')
  OR
    (CITY NOT LIKE '%A' AND  
     CITY NOT LIKE '%E' AND
     CITY NOT LIKE '%I' AND
     CITY NOT LIKE '%O' AND
     CITY NOT LIKE '%U')
ORDER BY CITY;

-- Selecionando cidades da coluna CITY que NAO iniciem e NAO terminem em vogais e que não sejam duplicadas, ordenadas alfabeticamente

SELECT DISTINCT CITY
FROM STATION
WHERE
    (CITY NOT LIKE 'A%' AND  
     CITY NOT LIKE 'E%' AND
     CITY NOT LIKE 'I%' AND
     CITY NOT LIKE 'O%' AND
     CITY NOT LIKE 'U%')
  AND
    (CITY NOT LIKE '%A' AND  
     CITY NOT LIKE '%E' AND
     CITY NOT LIKE '%I' AND
     CITY NOT LIKE '%O' AND
     CITY NOT LIKE '%U')
ORDER BY CITY;