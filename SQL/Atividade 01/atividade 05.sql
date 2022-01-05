
SELECT atendime.cd_atendimento          codigo_atendimento,
        CASE WHEN tip_presc.cd_tip_presc IN ('90754', '90733') THEN 'UCO'
             WHEN tip_presc.cd_tip_presc IN ('90755', '90667') THEN 'UTI'
                                        ELSE 'Não Contabilizado'
                                         END  codigo_atendimento,
        To_Char(atendime.dt_atendimento, 'mon/yyyy')     competencia,
        pre_med.dt_pre_med,
        prestador.nm_prestador      nome_prestador,
        mov_int.hr_mov_int          sinal_transferencia,
        mov_int.tp_mov              tipo_movimentacao,
        pre_med.cd_prestador,
        itpre_med.cd_itpre_med,
        unid_int.cd_unid_int,
        unid_int.ds_unid_int
FROM  atendime,
      paciente,
      prestador,
      mov_int,
      tip_presc,
      itpre_med,
      pre_med,
      setor,
      unid_int,
      pro_fat,
      ori_ate

WHERE atendime.cd_paciente = paciente.cd_paciente
AND   prestador.cd_prestador = atendime.cd_prestador
AND   atendime.cd_atendimento = mov_int.cd_atendimento
AND   tip_presc.cd_tip_presc = itpre_med.cd_tip_presc
AND   itpre_med.cd_prestador = prestador.cd_prestador
AND   pre_med.cd_atendimento = atendime.cd_atendimento
AND   pre_med.cd_pre_med = itpre_med.cd_pre_med
AND   atendime.cd_ori_ate = ori_ate.cd_ori_ate
AND   ori_ate.cd_setor = setor.cd_setor
AND   setor.cd_setor = unid_int.cd_setor
AND   tip_presc.cd_tip_presc IN ('90754', '90755', '90733', '90667')        -- Restrições
AND   mov_int.tp_mov = 'O'

  ORDER BY 1;

WHERE atendime.cd_paciente = paciente.cd_paciente
AND   atendime.cd_prestador = prestador.cd_prestador
AND   atendime.cd_ori_ate = ori_ate.cd_ori_ate
AND   mov_int.cd_atendimento = atendime.cd_atendimento
AND   ori_ate.cd_setor = setor.cd_setor
AND   pre_med.cd_atendimento = atendime.cd_atendimento
AND   itpre_med.cd_pre_med = pre_med.cd_pre_med
AND   tip_presc.cd_tip_presc = itpre_med.cd_tip_presc
AND   pre_med.cd_unid_int = unid_int.cd_unid_int


 --AND    tip_presc.cd_tip_presc IN ('90754', '90755', '90733', '90667')        -- Restrições




SELECT atendime.cd_atendimento                     codigo_atendimento
,      To_Char(atendime.dt_atendimento, 'mm/yyyy') data_atendimento
,      pre_med.dt_pre_med                          data_prescricao
,      itpre_med.cd_itpre_med                        codigo_prescricao
,      CASE tip_presc.cd_tip_presc
       WHEN 90754 THEN 'UCO'
       WHEN 90733 THEN 'UCO'
       ELSE 'UTI'
       END                                         tipo_vaga
,      pre_med.cd_prestador                        codigo_prestador
,      prestador.nm_prestador                      nome_prestador
,      unid_int.cd_unid_int                        unidade_internacao
,      unid_int.ds_unid_int                        nome_unid_internacao
,      mov_int.hr_mov_int                          sinal_vital












SELECT
FROM tip_presc
WHERE  tip_presc.cd_tip_presc IN ('90754', '90755', '90733', '90667')


-- pre_med
--itpre_med -- cd_tip_presc





