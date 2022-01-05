------3) Quantidade de pacientes atendidos no ano de 2016.

      SELECT Count(*)  AS Quantidade_atendidos_2016

      FROM(

         SELECT distinct -- (atendime.dt_atendimento) AS quantidade
         paciente.cd_paciente --, Count(*)

         FROM atendime
         , paciente

         WHERE atendime.cd_paciente = paciente.cd_paciente
         AND atendime.dt_atendimento BETWEEN To_Date ('01/01/2016', 'dd/mm/yyyy')
                                         AND To_Date('31/12/2016')
      )

      GROUP BY 1
