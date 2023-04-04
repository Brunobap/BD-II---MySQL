create database if not exists bdII;
use bdII;

create table if not exists empregados
( id int ,
nome varchar(20),
sobrenome varchar(20),
cargo varchar(30),
idade int,
anos int,
salario int,
extras int,
email varchar(60),
primary key (id))Engine=INNODB;

/*insert into empregados values
( 1 , "Manish", "Sharma", "CEO", 28, 4, 200000, 50000, "manish@bignet.com"),
( 2 , "John", "Hagan", "Senior Programmer", 32, 4, 120000, 25000, "john_hagan@bignet.com"),
( 3 , "Ganesh", "Pillai", "Senior Programmer", 32, 4, 110000, 20000, "g_pillai@bignet.com"),
( 4 , "Anamika","Pandit", "Web Designer", 27, 3, 90000, 15000, "ana@bignet.com"),
( 5 , "Mary", "Anchor", "Web Designer", 26, 2, 85000, 15000, "mary@bignet.com"),
( 6 , "Fred", "Kruger", "Programmer", 31, 3, 75000, 15000, "fk@bignet.com"),
( 7 , "John", "MacFarland", "Programmer", 34, 4, 80000, 16000, "john@bignet.com"),
( 8 , "Edward", "Sakamuro", "Programmer", 25, 2, 75000, 14000, "eddie@bignet.com"),
( 9 , "Alok", "Nanda", "Programmer", 32, 3, 70000, 10000, "alok@bignet.com"),
( 10, "Hassan", "Rajabi", "Multimedia Programmer", 33, 3, 90000, 15000, "hasan@bignet.com"),
( 11, "Paul", "Simon", "Multimedia Programmer", 43, 2, 85000, 12000, "ps@bignet.com"),
( 12, "Arthur", "Hoopla", "Multimedia Programmer", 32, 1, 75000, 15000, "arthur@bignet.com"),
( 13, "Kim", "Hunter", "Senior Web Designer", 32, 2, 110000, 20000, "kim@bignet.com"),
( 14, "Roger", "Lewis", "System Administrator", 35, 2, 100000, 13000, "roger@bignet.com"),
( 15, "Danny", "Gibson", "System Administrator", 34, 1, 90000, 12000, "danny@bignet.com"),
( 16, "Mike", "Harper", "Senior Marketing Executive", 36, 2, 120000, 28000, "mike@bignet.com"),
( 17, "Monica", "Sehgal", "Marketing Executive", 30, 3, 90000, 25000, "monica@bignet.com"),
( 18, "Hal", "Simlai", "Marketing Executive", 27, 2, 70000, 18000, "hal@bignet.com"),
( 19, "Joseph", "Irvine", "Marketing Executive", 27, 2, 72000, 18000, "joseph@bignet.com"),
( 20, "Shahida", "Ali", "Customer Service Manager", 32, 3, 70000, 9000, "shahida@bignet.com"),
( 21, "Peter", "Champion", "Finance Manager", 36, 4, 120000, 25000, "peter@bignet.com");*/

-- Parte minha do código
-- 1. Listar todos os dados da tabela Empregados.
SELECT * FROM Empregados;

-- 2. Selecionar o nome e sobrenome dos empregados.
SELECT nome, sobrenome FROM Empregados;

-- 3. Liste os nomes e sobrenomes dos empregados chamados John.
SELECT nome, sobrenome FROM Empregados WHERE nome = "John";

-- 4. Liste os nomes e sobrenomes dos empregados que são programadores.
SELECT nome, sobrenome FROM Empregados WHERE cargo LIKE "%Programmer%";

-- 5. Selecione os nomes e sobrenomes dos empregados que tem idade de 32 anos.
SELECT nome, sobrenome FROM Empregados WHERE idade = 32;

-- 6. Selecione os nomes e sobrenomes dos empregados que tem idade acima 32 anos.


-- 7. Selecione os nomes e sobrenomes dos empregados que tem menos que 3 anos de serviço.
-- 8. Selecione os nomes e sobrenomes, idades e salários dos empregados que tem idade de 33 anos ou mais.
-- 9. Selecione os nomes e sobrenomes dos empregados que tem 2 anos ou menos de serviço.
-- 10. Selecione os nomes e sobrenomes dos empregados que o nome começa com a letra J.
-- 11. Selecione os nomes e sobrenomes dos empregados que trabalham como Senior.
-- 12. Selecione os nomes e sobrenomes dos empregados que tem sobrenome que termine com a letra A.
-- 13. Selecione os nomes e sobrenomes dos empregados que tem salário entre 70000 e 90000.
-- 14. Selecione os sobrenomes dos empregados que tem sobrenome que começam com A ou S.
-- 15. Selecione os nomes, sobrenomes e idades dos empregados que tem sobrenome que começam com A ou S e idade menor que 30.
-- 16. Selecione os nomes, sobrenomes e cargos dos empregados que não são programadores.
-- 17. Selecione os nomes e sobrenomes dos empregados que tem mais que 3 anos de serviço e idade superior a 30 anos.
-- 18. Selecione os nomes, sobrenomes e idades dos empregados que tem idade entre 32 e 40 anos.
-- 19. Selecione os nomes, sobrenomes e salários dos empregados que não ganham entre 90000 e 150000.
-- 20. Selecione os sobrenomes e nomes dos empregados ordenados por sobrenome.
-- 21. Selecione os nomes, sobrenomes e idades dos empregados ordenados por idade.
-- 22. Selecione os nomes dos empregados ordenados de forma descendente (ordem alfabética).
-- 23. Selecione os nomes, sobrenomes dos empregados, mas somente 5 empregados.
-- 24. Selecione os nomes, sobrenomes e idades dos empregados ordenados por idade, de forma descendente e apenas 4 registros.
-- 25. Selecione os nomes, sobrenomes e idades dos empregados ordenados por idade, mas apenas 2 registros.
-- 26. Selecione os cargos dos empregados.
-- 27. Liste os cargos dos empregados, sem repetições.
-- 28. Liste as idades dos empregados, sem repetições.
-- 29. Exibir o nome, sobrenome dos empregados e o salário acrescido de 10%.
-- 30. Selecionar nome e sobrenome dos empregados com idade igual a 32, 28 ou 27.
-- 31. Selecionar nome e sobrenome dos empregados que são CEO ou Programmer.
-- 32. Informar o número de empregados existentes nesta tabela.
-- 33. Informar a média de idade dos empregados.
-- 34. Informar a menor de idade dos empregados.
-- 35. Informar a maior de idade dos empregados.
-- 36. Mostrar a soma dos salários dos empregados.