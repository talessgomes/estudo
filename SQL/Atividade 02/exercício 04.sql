----Fazer um Select dos pacientes internados durante o mês de agosto de 2014, com idade
----maior ou igual a 50 anos.

         SELECT tp_atendimento, dt_nascimento       -- Seleção das duas coisas que vão aparecer na lista

           FROM(
            SELECT  atendime.tp_atendimento         -- Sub seleção para mostrar o tipo de atendimento, data
            , paciente.dt_nascimento
            , (SYSDATE - dt_nascimento)/365        -- Mostrar a idade do paciente

            FROM atendime
            , paciente

            WHERE atendime.dt_atendimento BETWEEN To_Date('01/01/2014','dd/mm/yyyy')
                                              AND To_Date('31/08/2014', 'dd/mm/yyyy')
            AND paciente.cd_paciente = atendime.cd_paciente
            AND atendime.tp_atendimento LIKE '%I%'   -- Filtro para poder ver a letra que vai ser escolhida
            );
