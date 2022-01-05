SELECT mes
, Sum (faturamento_mensal) faturamento_mensal
FROM
        (
        SELECT To_char(itreg_fat.dt_lancamento, 'mm/yyyy') mes
        , Trunc(Sum(itreg_fat.vl_unitario),2) faturamento_mensal
        FROM itreg_fat
        WHERE Trunc(itreg_fat.dt_lancamento) between To_Date('01/01/2015', 'dd/mm/yyyy')
                                                AND To_Date('31/12/2015', 'dd/mm/yyyy')
        GROUP BY to_char(itreg_fat.dt_lancamento, 'mm/yyyy')

        UNION ALL

        SELECT to_char(itreg_amb.hr_lancamento, 'mm/yyyy') mes
      , Trunc(Sum(itreg_amb.vl_unitario),2) faturamento_mensal
      FROM itreg_amb
      WHERE Trunc(itreg_amb.hr_lancamento) between To_Date('01/01/2015', 'dd/mm/yyyy')
                                              AND To_Date('31/12/2015', 'dd/mm/yyyy')
      GROUP BY to_char(itreg_amb.hr_lancamento, 'mm/yyyy')
      )
      GROUP BY mes

      ORDER BY 1


