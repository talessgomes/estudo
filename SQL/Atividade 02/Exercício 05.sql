----5) Total de atendimento do mês de janeiro de 2018, separados por tipo de atendimento.
        SELECT Count(dt_atendimento) -- Registra o número de atendimento
        , tp_atendimento             -- São os tipos de atendimentos que vão ir para cada ação

        FROM (
          SELECT atendime.dt_atendimento        -- seleções da lista para pegar a data e o tipo de atendimento que foi feito
          , atendime.tp_atendimento

          FROM atendime         -- Lista para ver o que vai ser usado

          WHERE  atendime.dt_atendimento BETWEEN To_Date('01/01/2018', 'dd/mm/yyyy')  -- Registro da data inicial
                                            AND To_Date('31/01/2018', 'dd/mm/yyyy')   -- Pega a data final
          )
           GROUP BY tp_atendimento -- Aqui é onde separa a quantidade e colocar em cada lugar
