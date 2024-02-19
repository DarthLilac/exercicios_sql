--EXERCÍCIOS SQL ANDRESSA LOURENÇO DA ROCHA - WOMAKERSCODE


CREATE DATABASE BANCO
  
USE BANCO;

--1. Crie uma tabela chamada "alunos" com os seguintes campos: id(inteiro), nome (texto), idade (inteiro) e curso (texto).

CREATE TABLE alunos (id  int IDENTITY(1,1) PRIMARY KEY NOT NULL, nome varchar (100), idade int, curso varchar(100))

--2. Insira pelo menos 5 registros de alunos na tabela que você criou no exercício anterior.

insert into alunos (nome,idade,curso) values ('Victor',49,'Engenharia de Computação')
insert into alunos (nome, idade, curso) values ('Miguel',17,'Administração')
insert into alunos (nome, idade, curso) values ('Arthur',23,'Arquitetura e Urbanismo')
insert into alunos (nome, idade, curso) values ('Gael',28,'Biomedicina')
insert into alunos (nome, idade, curso) values ('Heitor',21,'Ciência da Computação')
insert into alunos (nome, idade, curso) values ('Helena',39,'Ciências Biológicas')
insert into alunos (nome, idade, curso) values ('Alice',20,'Ciências Contábeis')
insert into alunos (nome, idade, curso) values ('Theo',17,'Ciências Econômicas')
insert into alunos (nome, idade, curso) values ('Laura',31,'Comércio Exterior')
insert into alunos (nome, idade, curso) values ('Davi',34,'Design de Interiores')
insert into alunos (nome, idade, curso) values ('Gabriel',27,'Direito')
insert into alunos (nome, idade, curso) values ('Miguel',27,'Educação Física')
insert into alunos (nome, idade, curso) values ('Arthur',32,'Enfermagem')
insert into alunos (nome, idade, curso) values ('Gael',17,'Engenharia Elétrica')
insert into alunos (nome, idade, curso) values ('Heitor',33,'Engenharia Mecânica')
insert into alunos (nome, idade, curso) values ('Theo',31,'Farmácia')
insert into alunos (nome, idade, curso) values ('Davi',19,'Física')
insert into alunos (nome, idade, curso) values ('Gabriel',17,'Fisioterapia')
insert into alunos (nome, idade, curso) values ('Bernardo',17,'Gastronomia')
insert into alunos (nome, idade, curso) values ('Samuel',24,'Geografia')
insert into alunos (nome, idade, curso) values ('João',32,'Gestão de Recursos Humanos')
insert into alunos (nome, idade, curso) values ('Helena',36,'Gestão de Turismo')
insert into alunos (nome, idade, curso) values ('Alice',18,'Gestão Pública')
insert into alunos (nome, idade, curso) values ('Laura',34,'História')
insert into alunos (nome, idade, curso) values ('Maria',39,'Letras')
insert into alunos (nome, idade, curso) values ('Valentina',29,'Medicina')
insert into alunos (nome, idade, curso) values ('Heloísa',24,'Nutrição')
insert into alunos (nome, idade, curso) values ('Maria',34,'Odontologia')
insert into alunos (nome, idade, curso) values ('Maria',23,'Pedagogia')
insert into alunos (nome, idade, curso) values ('Maria',37,'Psicologia')
insert into alunos (nome, idade, curso) values ('Sophia',38,'Radiologia')
insert into alunos (nome, idade, curso) values ('Theo',40,'Relações Internacionais')
insert into alunos (nome, idade, curso) values ('Laura',37,'Turismo')

--3. Consultas Básicas

--Escreva consultas SQL para realizar as seguintes tarefas:

--a) Selecionar todos os registros da tabela "alunos".
  
SELECT		*
FROM		ALUNOS

--b) Selecionar o nome e a idade dos alunos com mais de 20 anos.

SELECT		NOME, IDADE
FROM		ALUNOS
WHERE		IDADE > 20


--c) Selecionar os alunos do curso de "Engenharia" em ordem alfabética.

SELECT		*
FROM		ALUNOS
WHERE		CURSO LIKE 'ENGENHARIA%'
ORDER BY	NOME

--d) Contar o número total de alunos na tabela

SELECT		COUNT(1) AS [QTDE DE ALUNOS]
FROM		ALUNOS

--4. Atualização e Remoção

--a) Atualize a idade de um aluno específico na tabela.

UPDATE	alunos
SET		idade = 25
WHERE	id = 1

--b) Remova um aluno pelo seu ID.

DELETE alunos
WHERE id=14

--5. Criar uma Tabela e Inserir Dados

--Crie uma tabela chamada "clientes" com os campos: id (chave primária), nome (texto), idade (inteiro) e saldo (float). Insira alguns registros de clientes na tabela.

CREATE TABLE clientes (id  int IDENTITY(1,1) PRIMARY KEY NOT NULL, nome varchar (100), idade int, saldo float)

insert into clientes (nome, idade, saldo) values ('Miguel',27,1448)
insert into clientes (nome, idade, saldo) values ('Arthur',18,908)
insert into clientes (nome, idade, saldo) values ('Gael',34,725)
insert into clientes (nome, idade, saldo) values ('Heitor',36,525)
insert into clientes (nome, idade, saldo) values ('Helena',24,963)
insert into clientes (nome, idade, saldo) values ('Alice',24,707)
insert into clientes (nome, idade, saldo) values ('Theo',38,873)
insert into clientes (nome, idade, saldo) values ('Laura',19,1901)
insert into clientes (nome, idade, saldo) values ('Davi',24,855)
insert into clientes (nome, idade, saldo) values ('Gabriel',36,1841)
insert into clientes (nome, idade, saldo) values ('Miguel',19,1809)
insert into clientes (nome, idade, saldo) values ('Arthur',36,903)
insert into clientes (nome, idade, saldo) values ('Gael',21,1560)
insert into clientes (nome, idade, saldo) values ('Heitor',37,721)
insert into clientes (nome, idade, saldo) values ('Theo',36,1852)
insert into clientes (nome, idade, saldo) values ('Davi',37,851)
insert into clientes (nome, idade, saldo) values ('Gabriel',25,960)
insert into clientes (nome, idade, saldo) values ('Bernardo',36,1126)
insert into clientes (nome, idade, saldo) values ('Samuel',31,952)
insert into clientes (nome, idade, saldo) values ('João',28,1792)
insert into clientes (nome, idade, saldo) values ('Helena',32,1207)
insert into clientes (nome, idade, saldo) values ('Alice',29,1056)
insert into clientes (nome, idade, saldo) values ('Laura',17,1883)
insert into clientes (nome, idade, saldo) values ('Valentina',25,1389)
insert into clientes (nome, idade, saldo) values ('Maria',33,986)
insert into clientes (nome, idade, saldo) values ('Heloísa',35,1130)
insert into clientes (nome, idade, saldo) values ('Maria',22,719)
insert into clientes (nome, idade, saldo) values ('Maria',21,1422)
insert into clientes (nome, idade, saldo) values ('Maria',25,1051)
insert into clientes (nome, idade, saldo) values ('Sophia',39,1271)
insert into clientes (nome, idade, saldo) values ('Theo',33,847)
insert into clientes (nome, idade, saldo) values ('Laura',28,1450)


--6. Consultas e Funções Agregadas

--Escreva consultas SQL para realizar as seguintes tarefas:

--a) Selecione o nome e a idade dos clientes com idade superior a 30 anos.

SELECT nome, idade
FROM clientes
WHERE idade>30

--b) Calcule o saldo médio dos clientes.

SELECT AVG(saldo)
FROM clientes

--c) Encontre o cliente com o saldo máximo.

SELECT MAX(saldo)
FROM clientes

--d) Conte quantos clientes têm saldo acima de 1000.

SELECT COUNT(1)
FROM clientes
WHERE saldo>1000


--7. Atualização e Remoção com Condições

SELECT *
FROM clientes

--a) Atualize o saldo de um cliente específico.

UPDATE	clientes
set		saldo = 22
where	id = 28

--b) Remova um cliente pelo seu ID.

DELETE clientes
WHERE id=15

--8. Junção de Tabelas

--Crie uma segunda tabela chamada "compras" com os campos: id (chave primária), cliente_id (chave estrangeira referenciando o id
--da tabela "clientes"), produto (texto) e valor (real). Insira algumas compras associadas a clientes existentes na tabela "clientes".


CREATE TABLE compras (id int identity (1,1) primary key not null, cliente_id int foreign key references clientes(id), produto varchar(100), valor real)

insert into compras (cliente_id, produto, valor) values (17,'Álcool',11)
insert into compras (cliente_id, produto, valor) values (28,'Detergente',3)
insert into compras (cliente_id, produto, valor) values (7,'Desinfetante',7)
insert into compras (cliente_id, produto, valor) values (31,'Limpa vidros',9)
insert into compras (cliente_id, produto, valor) values (23,'Água sanitária',5)
insert into compras (cliente_id, produto, valor) values (32,'Flanelas',10)
insert into compras (cliente_id, produto, valor) values (18,'Luvas',6)
insert into compras (cliente_id, produto, valor) values (20,'Balde',18)
insert into compras (cliente_id, produto, valor) values (26,'Sacos para lixo',15)
insert into compras (cliente_id, produto, valor) values (6,'Vassoura',25)
insert into compras (cliente_id, produto, valor) values (1,'Esponja',7)
insert into compras (cliente_id, produto, valor) values (22,'Panos',12)
insert into compras (cliente_id, produto, valor) values (5,'Rodo',50)
insert into compras (cliente_id, produto, valor) values (25,'Álcool',11)
insert into compras (cliente_id, produto, valor) values (25,'Detergente',3)
insert into compras (cliente_id, produto, valor) values (28,'Desinfetante',7)
insert into compras (cliente_id, produto, valor) values (8,'Limpa vidros',9)
insert into compras (cliente_id, produto, valor) values (17,'Água sanitária',5)
insert into compras (cliente_id, produto, valor) values (2,'Flanelas',10)
insert into compras (cliente_id, produto, valor) values (15,'Luvas',6)
insert into compras (cliente_id, produto, valor) values (1,'Balde',18)
insert into compras (cliente_id, produto, valor) values (5,'Sacos para lixo',15)
insert into compras (cliente_id, produto, valor) values (27,'Vassoura',25)
insert into compras (cliente_id, produto, valor) values (32,'Esponja',7)
insert into compras (cliente_id, produto, valor) values (21,'Panos',12)
insert into compras (cliente_id, produto, valor) values (31,'Rodo',50)
insert into compras (cliente_id, produto, valor) values (14,'Álcool',11)
insert into compras (cliente_id, produto, valor) values (20,'Detergente',3)
insert into compras (cliente_id, produto, valor) values (23,'Desinfetante',7)
insert into compras (cliente_id, produto, valor) values (25,'Limpa vidros',9)
insert into compras (cliente_id, produto, valor) values (10,'Água sanitária',5)
insert into compras (cliente_id, produto, valor) values (10,'Flanelas',10)
insert into compras (cliente_id, produto, valor) values (25,'Luvas',6)
insert into compras (cliente_id, produto, valor) values (27,'Balde',18)
insert into compras (cliente_id, produto, valor) values (26,'Sacos para lixo',15)
insert into compras (cliente_id, produto, valor) values (6,'Vassoura',25)
insert into compras (cliente_id, produto, valor) values (27,'Esponja',7)
insert into compras (cliente_id, produto, valor) values (9,'Panos',12)
insert into compras (cliente_id, produto, valor) values (20,'Rodo',50)
insert into compras (cliente_id, produto, valor) values (16,'Sacos para lixo',15)
insert into compras (cliente_id, produto, valor) values (32,'Vassoura',25)
insert into compras (cliente_id, produto, valor) values (9,'Esponja',7)
insert into compras (cliente_id, produto, valor) values (6,'Panos',12)
insert into compras (cliente_id, produto, valor) values (4,'Rodo',50)
insert into compras (cliente_id, produto, valor) values (26,'Álcool',11)
insert into compras (cliente_id, produto, valor) values (11,'Detergente',3)
insert into compras (cliente_id, produto, valor) values (19,'Desinfetante',7)
insert into compras (cliente_id, produto, valor) values (14,'Limpa vidros',9)
insert into compras (cliente_id, produto, valor) values (9,'Água sanitária',5)
insert into compras (cliente_id, produto, valor) values (24,'Flanelas',10)
insert into compras (cliente_id, produto, valor) values (7,'Luvas',6)
insert into compras (cliente_id, produto, valor) values (2,'Balde',18)
insert into compras (cliente_id, produto, valor) values (32,'Sacos para lixo',15)
insert into compras (cliente_id, produto, valor) values (11,'Vassoura',25)
insert into compras (cliente_id, produto, valor) values (15,'Esponja',7)
insert into compras (cliente_id, produto, valor) values (28,'Panos',12)
insert into compras (cliente_id, produto, valor) values (16,'Rodo',50)
insert into compras (cliente_id, produto, valor) values (24,'Sacos para lixo',15)
insert into compras (cliente_id, produto, valor) values (27,'Vassoura',25)
insert into compras (cliente_id, produto, valor) values (13,'Esponja',7)
insert into compras (cliente_id, produto, valor) values (29,'Panos',12)
insert into compras (cliente_id, produto, valor) values (17,'Rodo',50)
insert into compras (cliente_id, produto, valor) values (2,'Álcool',11)
insert into compras (cliente_id, produto, valor) values (29,'Detergente',3)
insert into compras (cliente_id, produto, valor) values (27,'Desinfetante',7)
insert into compras (cliente_id, produto, valor) values (17,'Limpa vidros',9)
insert into compras (cliente_id, produto, valor) values (25,'Água sanitária',5)
insert into compras (cliente_id, produto, valor) values (1,'Flanelas',10)
insert into compras (cliente_id, produto, valor) values (14,'Luvas',6)
insert into compras (cliente_id, produto, valor) values (18,'Balde',18)
insert into compras (cliente_id, produto, valor) values (7,'Sacos para lixo',15)
insert into compras (cliente_id, produto, valor) values (14,'Vassoura',25)
insert into compras (cliente_id, produto, valor) values (10,'Esponja',7)
insert into compras (cliente_id, produto, valor) values (11,'Panos',12)
insert into compras (cliente_id, produto, valor) values (4,'Rodo',50)

--Escreva uma consulta para exibir o nome do cliente, o produto e o valor de cada compra.

SELECT b.id, b.nome, a.produto, count(produto) as qtde, sum(valor) as valor
FROM compras	a

JOIN	clientes	b
ON		a.cliente_id	=	b.id

GROUP BY	b.id, b.nome, a.produto
ORDER BY	b.id
