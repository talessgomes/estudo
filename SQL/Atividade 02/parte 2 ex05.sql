------5) Fazer um select com a quantidade de Exames de Fundoscopia no ano de 2017,
--------agrupadas por prestador. Dica: utilizar a itreg_fat.

      SELECT  prestador.nm_prestador AS prestador, Count(pro_fat.cd_pro_fat) AS exame

      FROM itreg_fat
      , atendime
      , prestador
      , reg_fat
      , pro_fat

      WHERE itreg_fat.cd_reg_fat = reg_fat.cd_reg_fat
      AND reg_fat.cd_atendimento = atendime.cd_atendimento
      AND atendime.cd_prestador = prestador.cd_prestador
      AND pro_fat.cd_pro_fat = itreg_fat.cd_pro_fat
      AND atendime.dt_atendimento BETWEEN To_Date('01/01/2017', 'dd/mm/yyyy')
                                      AND To_Date('31/12/2017', 'dd/mm/yyyy')

      GROUP BY prestador.nm_prestador
