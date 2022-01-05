
SELECT *
FROM
DELETE especie_ava
WHERE cd_especie =   '14'      -- 1 linha foi deletada, número 14

COMMIT;                        -- commit executado

     ORA-02292: restrição de integridade (DBAMV.AVA_CLASSE_FK) violada - registro filho localizado  -- indicando o que estava dando erro

SELECT *          -- Pegando o dado da tabela que deu erro
FROM
DELETE classe_ava
WHERE cd_especie = '14';      -- 8 linhas foram deletadas

COMMIT;                       -- commit executado


ORA-02292: restrição de integridade (DBAMV.AVA_SUBCLASSE_FK) violada - registro filho localizado        -- indicando o que estava dando erro

SELECT *                        -- Nova tabela sendo usada, para deletar o 14 que não pode ser deletado na tabela de cima
FROM
DELETE sub_clas_ava
WHERE cd_especie = '14'        -- foi deletado 21 linhas

     COMMIT;                   -- commit executado