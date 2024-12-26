--Consultar a relação de alunos e mentores
SELECT * FROM MENTOR_ALUNO

-- Consultar o total de alunos
SELECT COUNT(*) FROM MENTOR_ALUNO WHERE TIPO_USUARIO = 'A'

-- Consultar o total de mentores
SELECT COUNT(*) FROM MENTOR_ALUNO WHERE TIPO_USUARIO = 'M'

--Consultar o total de mentorias realizadas por mentor
SELECT
    COUNT(*) TOTAL,
    MA.NOME
FROM MENTORIA_REALIZADA MR
JOIN MENTORIA M ON M.UUID = MR.UUID_MENTORIA
JOIN MENTOR_ALUNO MA ON MA.UUID = M.UUID_MENTOR
WHERE MA.TIPO_USUARIO = 'M'
GROUP BY MA.NOME