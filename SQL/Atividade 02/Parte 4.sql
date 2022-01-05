--------PARTE 4
------1) Trazer os itens das contas ambulatoriais e de internação fechadas, com nome do
------convenio, nome do paciente e valor unitário e valor total.

      SELECT reg_amb.sn_fechada
      , convenio.nm_convenio
      , paciente.nm_paciente
      , reg_amb.vl_total_conta
      , itreg_amb.vl_unitario

      FROM reg_amb
      , itreg_amb
      , convenio
      , paciente
      , atendime

      WHERE atendime.cd_convenio = convenio.cd_convenio
      AND reg_amb.cd_reg_amb = itreg_amb.cd_reg_amb
      AND atendime.cd_paciente = paciente.cd_paciente
      AND atendime.cd_atendimento = itreg_amb.cd_atendimento


------2) Idem, mas agora trazer um somatório por convênio.

      SELECT itreg_amb.vl_unitario
      , reg_amb.vl_total_conta
      , paciente.nm_paciente
      , paciente.cd_paciente
      , Count(convenio.nm_convenio) AS somatorio_por_convenio
      , convenio.cd_convenio
      , reg_amb.cd_reg_amb
      , itreg_amb.sn_fechada

      FROM reg_amb
      , itreg_amb
      , convenio
      , paciente
      , atendime
      , pro_fat

      WHERE itreg_amb.sn_fechada <> 'N'
      AND itreg_amb.cd_pro_fat = pro_fat.cd_pro_fat
      AND atendime.cd_atendimento = itreg_amb.cd_atendimento
      AND reg_amb.cd_reg_amb = itreg_amb.cd_reg_amb
      AND atendime.cd_paciente = paciente.cd_paciente
      AND atendime.cd_convenio = convenio.cd_convenio

      GROUP BY itreg_amb.vl_unitario
      , reg_amb.vl_total_conta
      , paciente.nm_paciente
      , paciente.cd_paciente
      , convenio.cd_convenio
      , reg_amb.cd_reg_amb
      , itreg_amb.sn_fechada

      ORDER BY 5 desc