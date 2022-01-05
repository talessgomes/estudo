------2) Fazer um select com todos os códigos das contas com mais de R$1000,00 no mês de
------setembro de 2015. Trazer códigos da conta e valor, ordenados por valor decrescente.


      SELECT itreg_fat.vl_total_conta
      , itreg_fat.dt_lancamento
      , itreg_fat.cd_reg_fat

      FROM itreg_fat

      WHERE itreg_fat.vl_total_conta > '1000,00'
       AND itreg_fat.cd_reg_fat > '1000,00'
      AND itreg_fat.dt_lancamento BETWEEN To_Date ('01/09;2015', 'dd/mm/yyyy')
                                      AND To_Date('30/09/2015', 'dd/mm/yyyy')

      ORDER BY 1

