------4) Fazer um select com o somatório de faturamento em internação por prestador no ano
------de 2018. Dica: agrupar pelo prestador o somatório de valores unitários.




SELECT atendime.cd_prestador
,prestador.nm_prestador
, Sum(itreg_fat.vl_unitario) valor_faturado
FROM itreg_fat
, atendime
, reg_fat
, prestador
WHERE atendime.cd_atendimento = reg_fat.cd_atendimento
AND itreg_fat.cd_reg_fat = reg_fat.cd_reg_fat
AND atendime.cd_prestador = prestador.cd_prestador
AND Trunc(itreg_fat.dt_lancamento) between TO_DATE('01/01/2018', 'DD/MM/YYYY')
                                       AND TO_DATE('31/12/2018', 'DD/MM/YYYY')
GROUP BY atendime.cd_prestador, prestador.nm_prestador



