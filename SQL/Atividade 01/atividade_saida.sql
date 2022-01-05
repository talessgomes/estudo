

  SELECT Sum(saida) saida,
  Sum(leit_disp) leit_disp
  , Round(Sum(saida)/Sum(leit_disp),2) IR
  FROM (
    SELECT 0 saida ,Count(*) leit_disp
    FROM mov_int
    WHERE Trunc(hr_lib_mov, 'mm') = To_Date('01/06/2019', 'dd/mm/yyyy')

    UNION ALL

    SELECT Count(*) saida, 0 leit_disp
    FROM atendime
    WHERE dt_alta IS NOT NULL
    AND Trunc(dt_alta, 'mm') = To_Date('01/06/2019', 'dd/mm/yyyy')
  )

    SELECT Count (*)
    FROM  leito
    WHERE tp_situacao = 'A'





SELECT
Sum (saida)   saida
, Sum (leitos_disp)  leitos_disp
, Round(Sum (saida)/Sum (leitos_disp),2) IR
FROM (
        SELECT  0 saida, Count(*)
 leitos_disp
        FROM mov_int
        WHERE Trunc(hr_lib_mov, 'mm') = To_Date('01/06/2019', 'dd/mm/yyyy')

        UNION ALL

        SELECT Count(*)
 saida, 0 leitos_disp
        FROM atendime
        WHERE dt_alta IS NOT NULL
        AND  Trunc(dt_alta, 'mm') = To_Date('01/06/2019', 'dd/mm/yyyy')
     )

SELECT Sum (saida) saida,
       Sum (leitos_disp) leitos_disp,
       Round(Sum (saida)/Sum (leitos_disp),2) IR
FROM (
      SELECT 0 saida , Count(*) leitos_disp
      FROM  mov_int
      WHERE Trunc(hr_lib_mov, 'mm') = To_Date('01/06/2019','dd/mm/yyyy')

      UNION ALL

      SELECT Count(*) saida, 0 leitos_disp
      FROM atendime
      WHERE  dt_alta IS NOT NULL
      AND    Trunc(dt_alta, 'mm') = To_Date('01/06/2019','dd/mm/yyyy')
      );





