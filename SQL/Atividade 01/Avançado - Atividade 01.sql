
CREATE TABLE pc_treina_Tales AS -- Criar tabela com todos pacientes
SELECT Count(*)
FROM (
SELECT *
FROM paciente
WHERE Trunc(hr_cadastro, 'yyyy') =  To_Date('01/01/2017','dd/mm/yyyy')
)


SELECT *        -- Contagem de pacientes com a inicial C
FROM
DELETE pc_treina_Tales
WHERE nm_paciente LIKE 'C%'


SELECT Count (*)  -- Estado civil São Paulo Capital
FROM (
SELECT *
FROM
UPDATE pc_treina_Tales
SET tp_estado_civil = 'C'
WHERE cd_cidade = 21847
);


INSERT INTO pc_treina_Tales -- Inserindo pacientes cadastrados de 2019
SELECT *
FROM paciente
WHERE Trunc(hr_cadastro, 'yyyy') = To_Date('01/01/2019','dd/mm/yyyy')
