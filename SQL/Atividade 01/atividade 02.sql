
 SELECT nm_convenio                   nome_convenio,
      Sum(itreg_amb.vl_unitario)    valor_ambulatorial,
      Sum(itreg_fat.vl_unitario)    valor_faturamento,
      tuss.cd_tuss codigo_tuss,
      itreg_fat.dt_lancamento


FROM   convenio
,      itreg_fat
,      pro_fat
,      itreg_amb
,      tuss

WHERE  convenio.cd_pro_fat = pro_fat.cd_pro_fat
AND    itreg_fat.cd_pro_fat = pro_fat.cd_pro_fat
AND    itreg_amb.cd_pro_fat = pro_fat.cd_pro_fat
AND tuss.cd_pro_fat = pro_fat.cd_pro_fat
AND    itreg_fat.dt_lancamento BETWEEN To_Date('02/08/2017', 'dd/mm/yyyy')
                                   AND To_Date('02/12/2021', 'dd/mm/yyyy')

GROUP BY convenio.nm_convenio,
itreg_fat.dt_lancamento,
tuss.cd_tuss

ORDER BY 1



QUESTÃO

Montar uma consulta relacionada com o faturamento dos ultimos 4 meses separado por convênio e o codigo tuss
tabelas de conta:
itreg_amb/itreg_fat (pegar a conta dos últimos 4 meses--- considerar a data de lançamento do item em conta--aqui será filtro)

colunas 
convenio (tabela convenio)
data faturamento (data de lançamento do item em conta)
pro_fat (procedimento que está na conta coluna cd_pro_fat das tabelas itreg_amb e itreg_fat)
codigo tuss (tabela tuss, nesta tabela temos o cd_pro_fat que deve ser relacionado ao CD_pro_fat que está na conta --itreg_amb e itreg_fat--- identificando pelo cd_convenio da conta)
ordenar pela data do último lançamento
este último item junto
