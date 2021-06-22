SELECT numero, nome FROM banco;

SELECT numero, nome FROM banco ORDER BY numero;

SELECT numero, nome FROM banco ORDER BY numero ASC;

SELECT numero, nome FROM banco ORDER BY numero DESC;

SELECT numero, nome, ativo FROM banco ORDER BY numero;

UPDATE banco SET ativo = false WHERE numero = 0;

BEGIN;
UPDATE banco SET ativo = true WHERE numero = 0;
SELECT numero, nome, ativo FROM banco WHERE numero =0;
ROLLBACK;

BEGIN;
UPDATE banco SET ativo = true WHERE numero = 0;
COMMIT;

SELECT id, gerente, nome
FROM funcionarios;

BEGIN;
UPDATE funcionarios SET gerente = 2 WHERE ID =3;
SAVEPOINT sf_func;
UPDATE funcionarios SET gerente = null;
ROLLBACK TO sf_func;
UPDATE funcionarios SET gerente = 3 where id = 5;
COMMIT;