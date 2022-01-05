CREATE TABLE prod_treina_Tales AS     -- Criando tabela com os produtos de 2015
SELECT *
FROM produto
WHERE Trunc(dt_cadastro, 'yyyy') = To_Date('01/01/2015','dd/mm/yyyy');



SELECT *            -- Deletando todos que forem sub classe 16   (278 deletados)
FROM
DELETE prod_treina_Tales
WHERE cd_sub_cla = 16;


SELECT *                -- deu 16 linhas
FROM
UPDATE prod_treina_Tales
SET dt_ultima_entrada = SYSDATE
WHERE sn_consignado = 'S'