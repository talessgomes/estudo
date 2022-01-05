----5) Total de atendimento do m�s de janeiro de 2018, separados por tipo de atendimento.
        SELECT Count(dt_atendimento) -- Registra o n�mero de atendimento
        , tp_atendimento             -- S�o os tipos de atendimentos que v�o ir para cada a��o

        FROM (
          SELECT atendime.dt_atendimento        -- sele��es da lista para pegar a data e o tipo de atendimento que foi feito
          , atendime.tp_atendimento

          FROM atendime         -- Lista para ver o que vai ser usado

          WHERE  atendime.dt_atendimento BETWEEN To_Date('01/01/2018', 'dd/mm/yyyy')  -- Registro da data inicial
                                            AND To_Date('31/01/2018', 'dd/mm/yyyy')   -- Pega a data final
          )
           GROUP BY tp_atendimento -- Aqui � onde separa a quantidade e colocar em cada lugar
