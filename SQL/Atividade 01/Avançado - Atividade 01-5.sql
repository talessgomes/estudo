CREATE TABLE pc_treina_tales2 AS -- Criando tabela
SELECT *
FROM paciente
WHERE Trunc(hr_cadastro,'yyyy') = To_Date('01/01/2017','dd/mm/yyyy')


SELECT Count(*)           -- Contagem feita, deu 337
FROM(
SELECT *
FROM pc_treina_tales2
)

SELECT *                      -- pacientes que começam com a letra C
FROM
DELETE pc_treina_tales2       -- Deletado 20 pacientes
WHERE nm_paciente LIKE 'C%'

COMMIT;                       -- Commit feito



SELECT *                   -- 6 pessoas apareceram - São Paulo Capital
FROM
UPDATE pc_treina_tales2
SET tp_estado_civil = 'C'
WHERE cd_cidade = 21847

COMMIT;                    -- Commit feito

INSERT INTO pc_treina_tales2 -- Isenrindo pacientes cadastros de 2019
SELECT *
FROM paciente
WHERE Trunc(hr_cadastro, 'yyyy') = To_Date('01/01/2019', 'dd/mm/yyyy');    -- 17 linhas foram inseridas

COMMIT;                       -- Commit feito
