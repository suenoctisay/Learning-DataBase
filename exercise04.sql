CREATE DATABASE escola_2;
USE escola_2;

-- a)
SELECT * FROM cursos;

-- b)
SELECT * FROM aluno WHERE YEAR (nascimento) != 1980;

-- c) 
SELECT nome FROM aluno AS a 
INNER JOIN aluno_curso AS ac ON a.codAluno = ac.codAluno
INNER JOIN curso AS c ON c.codCurso = ac.codCurso;

-- d)
SELECT * FROM cursos WHERE diaSemana != 'segunda-feira';

-- e)
SELECT AVG(mensalidade) media FROM aluno WHERE aluno LIKE 'H%';

-- f)
SELECT * FROM aluno WHERE mensalidade < 230;

-- g)
SELECT COUNT(*) FROM aluno
INNER JOIN aluno_curso ac ON a.codAluno = ac.codAluno
INNER JOIN curso c ON c.codCurso = ac.codCurso
WHERE c.descricao = 'contabilidade' AND c.diaSemana = 'quarta-feira';

-- h)
SELECT SUM(mesalidade) FROM aluno a
INNER JOIN aluno_curso ac ON a.codAluno = ac.codAluno
INNER JOIN curso c ON c.docCurso = ac.codCurso WHERE c.descricao = 'informárica básica';

-- i)
SELECT * FROM curso c
INNER JOIN aluno_curso ac ON c.codCurso - ac.codCurso
INNER JOIN aluno a ON a.codAluno = ac.codAluno
WHERE YEAR (nascimento) = 1995;

-- j)
SELECT nome, telefone FROM aluno a
INNER JOIN aluno_curso ac ON a.codAluno = ac.codAluno
INNER JOIN curso c ON c.codCurso = ac.codCurso
WHERE c.descricao = 'RH';