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