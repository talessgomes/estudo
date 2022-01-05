------2) Fazer um Select que traga o código de atendimento, nome do paciente, nome do
------convênio e somente dos atendimentos do 02/05/2017.
------Tabelas: atendime e paciente.

      SELECT atendime.cd_atendimento
      , paciente.nm_paciente
      , atendime.cd_convenio

      FROM atendime
      , paciente

      WHERE atendime.cd_paciente = paciente.cd_paciente
      AND atendime.dt_atendimento = To_Date('01/01/2017', 'dd/mm/yyyy')


--SELECT atendime.cd_atendimento
--, paciente.nm_paciente
--, atendime.cd_convenio

--FROM atendime
--, paciente

--WHERE atendime.cd_paciente = paciente.cd_paciente
-- AND atendime.dt_atendimento = TO_DATE('01/01/2017', 'dd/mm/yyyy')