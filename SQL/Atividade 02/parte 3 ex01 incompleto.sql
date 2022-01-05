----1) Trazer numa linha s� o paciente com mais atendimento em 2018, com o c�digo,
---- nome do paciente e conv�nio. Dica: fazer um contador para o n�mero de atendimentos.

         SELECT Count(dt_atendimento) -- Registra o n�mero de atendimento
        , nm_paciente             -- S�o os tipos de atendimentos que v�o ir para cada a��o
        , cd_convenio

        FROM (
          SELECT atendime.dt_atendimento        -- sele��es da lista para pegar a data e o tipo de atendimento que foi feito
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
           GROUP BY nm_paciente, cd_convenio -- Aqui � onde separa a quantidade e colocar em cada lugar