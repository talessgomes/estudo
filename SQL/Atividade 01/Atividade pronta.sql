
CREATE OR REPLACE VIEW modelo_view_acwl_tales as

SELECT paciente.nm_paciente AS Paciente
, itped_rx.cd_itped_rx AS Numero_item_solicidado
, itped_rx.dt_realizado AS dt_da_realização
, exa_rx.ds_exa_rx AS Descricao_exame
, atendime.dt_atendimento
, atendime.cd_atendimento|| paciente.cd_paciente AS usuario
, exa_rx.cd_exa_rx||atendime.cd_atendimento AS  Senha
FROM paciente,
atendime,
exa_rx,
itped_rx,
 ped_rx
WHERE  paciente.cd_paciente = atendime.cd_paciente
AND paciente.tp_sexo = exa_rx.tp_sexo
AND exa_rx.cd_exa_rx = itped_rx.cd_exa_rx
AND ped_rx.cd_ped_rx = itped_rx.cd_ped_rx
AND itped_rx.dt_realizado <= (SYSDATE - 400)