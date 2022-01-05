------1) Fazer um select com código de todos os itens da conta de internação, nome do
------paciente e nome do procedimento. Tabelas: itreg_fat, pro_fat, paciente.

      SELECT paciente.nm_paciente
      ,     atendime.cd_paciente
      ,     pro_fat.ds_pro_fat
      ,     itreg_fat.cd_reg_fat
      ,     itreg_fat.cd_lancamento

      FROM itreg_fat
      , pro_fat
      , paciente
      ,reg_fat
      , atendime

      WHERE pro_fat.cd_pro_fat = itreg_fat.cd_pro_fat
      AND atendime.cd_paciente = paciente.cd_paciente
      AND atendime.cd_atendimento = reg_fat.cd_atendimento
      AND reg_fat.cd_reg_fat = itreg_fat.cd_reg_fat



