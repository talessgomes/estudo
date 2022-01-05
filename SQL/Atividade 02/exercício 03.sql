----3) Criar uma pesquisa que informe o nome do paciente, o código e o nome da cidade da
----cidade em que o paciente reside, e o código de atendimento do paciente.
----Tabelas: atendime, cidade e paciente.

        SELECT paciente.nm_paciente
        , cidade.cd_cidade
        , cidade.nm_cidade
        , atendime.cd_atendimento

        FROM atendime
        , cidade
        , paciente

        WHERE atendime.cd_paciente = paciente.cd_paciente
        AND paciente.cd_cidade = cidade.cd_cidade


--      SELECT paciente.nm_paciente
--      , cidade.cd_cidade
--      , cidade.nm_cidade
--      , atendime.cd_atendimento
--      FROM atendime
--      , cidade
--      , paciente


-- atendime.cd_atendimento,     cidade.nm_cidade,         paciente.nm_paciente


