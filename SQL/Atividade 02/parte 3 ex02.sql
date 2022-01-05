------2) Fazer um select com todas conta da itreg_fat, nome do paciente, nome do prestador,
------ nome do convenio, nome do procedimento, valor do procedimento (vl_conta_total) dos 10 primeiros dias de 2018.

      SELECT *
      FROM (
      SELECT (itreg_fat.vl_total_conta)
      , itreg_fat.vl_unitario
      , paciente.nm_paciente
      , prestador.nm_prestador
      , prestador.cd_prestador
      , paciente.cd_paciente
      , convenio.nm_convenio
      , convenio.cd_convenio

      FROM itreg_fat
      , paciente
      , convenio
      , reg_fat
      ,prestador
      , pro_fat
      , atendime

      WHERE itreg_fat.dt_lancamento BETWEEN To_Date('01/01/2018' , 'dd/mm/yyyy')
                                                         AND  To_Date('01/01/2018' , 'dd/mm/yyyy')

      AND  itreg_fat.cd_reg_fat = reg_fat.cd_reg_fat
      AND  itreg_fat.cd_pro_fat = pro_fat.cd_pro_fat
      AND atendime.cd_paciente = paciente.cd_paciente
      AND prestador.cd_prestador = atendime.cd_prestador
      AND atendime.cd_convenio = convenio.cd_convenio
      AND atendime.cd_atendimento = reg_fat.cd_atendimento

      ORDER BY 1 DESC
      )
      WHERE ROWNUM <=10
