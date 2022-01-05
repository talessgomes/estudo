riação de um relatório personalizado (MV REPORT) para geração de
atendimentos médicos endoscópicos conforme faturamento de conta.

Critérios:

- nome do paciente
- numero do atendimento
- origem do atendimento
- código de procedimento e descrição
- busca por período
- busca por prestador
- vias de acesso --- ESCLARECIMENTO
- convenio / local e intercambio --- ESCLARECIMENTO
- valor ----
--atendimentos médicos endoscópicos

SELECT paciente.nm_paciente
, atendime.cd_atendimento
, ori_ate.ds_ori_ate
, exa_rx_cd_pro_fat
, ds_pro_fat
, CONVENIO.nm_convenio
, ITREG_AMB.vl_unitario
FROM paciente --
, atendime --
, prestador --
, convenio --
, exa_rx --
, ori_ate ---
, itped_rx --
, ped_rx --
, pro_fat --
, ITREG_AMB
WHERE paciente.cd_paciente = atendime.cd_paciente
AND ped_rx.cd_atendimento = atendime.cd_atendimento
AND itped_rx.cd_ped_rx = ped_rx.cd_ped_rx
AND atendime.cd_ori_ate = ori_ate.cd_ori_ate
AND itped_rx.cd_prestador = prestador.cd_prestador
AND exa_rx.cd_exa_rx = itped_rx.cd_exa_rx
AND ped_rx.cd_convenio = convenio.cd_convenio
AND exa_rx.exa_rx_cd_pro_fat = pro_fat.cd_pro_fat
AND ITREG_AMB.CD_ATENDIMENTO = ATENDIME.CD_ATENDIMENTO

-- and itped_rx.cd_prestador = PRESTADOR
-- AND itped_rx.dt_realizado BETWEEN DT_INICIAL AND DT_FINAL

  SELECT Count(*) qtd_atendiimento
 FROM (

   SELECT  atendime.cd_atendimento           codigo_atendimento,
           paciente.nm_paciente              nome_paciente,
           ori_ate.ds_ori_ate                origem_atendimento,
           cirurgia.ds_cirurgia              cirurgia,
           cirurgia.cd_cirurgia              codigo_cirurgia,
           itreg_amb.vl_total_conta          valor_total,
           cirurgia_aviso.cd_via_de_acesso   acesso

   FROM  atendime,
         paciente,
         cirurgia,
         cirurgia_aviso,
         aviso_cirurgia,
         ori_ate,
         itreg_amb,
         pro_fat
   WHERE atendime.cd_paciente = paciente.cd_paciente
   AND   aviso_cirurgia.nm_paciente = paciente.nm_paciente
   AND   atendime.cd_ori_ate = ori_ate.cd_ori_ate
   AND   aviso_cirurgia.cd_atendimento = atendime.cd_atendimento
   AND   cirurgia_aviso.cd_cirurgia = cirurgia.cd_cirurgia
   AND   itreg_amb.cd_atendimento = atendime.cd_atendimento
   AND   itreg_amb.cd_pro_fat = pro_fat.cd_pro_fat
   AND   cirurgia.ds_cirurgia LIKE Upper('%endoscopia alta%')
   AND   paciente.nm_paciente = 'CLAUDIO MANOEL LOBATO MAIA'
   AND   cirurgia.cd_cirurgia IN 3532

   ORDER BY 6 DESC
  );



