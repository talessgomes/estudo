----7) Um select traga a idade do paciente utilizando o comando sysdate e data de
----nascimento, anexando na pesquisa a CID ( Classificação Internacional de Doenças ) ,
----para informar a descrição da doença que foi indicada no atendimento do paciente.


      SELECT Trunc((SYSDATE - dt_nascimento)/365) AS idade
      , cid.ds_cid
      , atendime.dt_atendimento

      FROM  cid
      , paciente
      , atendime

      WHERE atendime.cd_paciente = paciente.cd_paciente  -- combinando atendime com paciente
      AND atendime.cd_cid = cid.cd_cid                   -- combinando atendime com cid

      ORDER BY idade           -- pega a idade para colocar na lista



--      SELECT ds_cid cid
--      , (SYSDATE - dt_nascimento)/365 AS idade
--      FROM paciente
--      , cid