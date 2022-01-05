----1) Trazer numa linha só o paciente com mais atendimento em 2018, com o código,
---- nome do paciente e convênio. Dica: fazer um contador para o número de atendimentos.

         SELECT Count(dt_atendimento) -- Registra o número de atendimento
        , nm_paciente             -- São os tipos de atendimentos que vão ir para cada ação
        , cd_convenio

        FROM (
          SELECT atendime.dt_atendimento        -- seleções da lista para pegar a data e o tipo de atendimento que foi feito
          , convenio.cd_convenio
          , paciente.nm_paciente

          FROM atendime         -- Lista para ver o que vai ser usado
          , paciente
          , convenio

          WHERE atendime.cd_paciente = paciente.cd_paciente
          AND atendime.cd_convenio = convenio.cd_convenio
          AND atendime.dt_atendimento BETWEEN To_Date('01/01/2018', 'dd/mm/yyyy')  -- Registro da data inicial
                                            AND To_Date('31/12/2018', 'dd/mm/yyyy')   -- Pega a data final
          ORDER BY 1 desc
          )
           GROUP BY nm_paciente, cd_convenio -- Aqui é onde separa a quantidade e colocar em cada lugar