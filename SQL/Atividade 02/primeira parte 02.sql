      SELECT To_char(itreg_amb.hr_lancamento, 'mm/yyyy') mes
      , Trunc(Sum(itreg_amb.vl_unitario),2) faturamento_mensal
      FROM itreg_amb
      WHERE Trunc(itreg_amb.hr_lancamento) between To_Date('01/01/2015', 'dd/mm/yyyy')
                                              AND To_Date('31/12/2015', 'dd/mm/yyyy')
      GROUP BY to_char(itreg_amb.hr_lancamento, 'mm/yyyy')














