SELECT nm_paciente
, Count(cd_atendimento) AS nro_atendimento
FROM (
SELECT atendime.cd_atendimento
, atendime.dt_atendimento
, upper(paciente.nm_paciente) nm_paciente
, paciente.dt_nascimento --- O que buscamos?
FROM paciente
, atendime --- onde que buscamos?

WHERE paciente.dt_nascimento between TO_DATE('01/01/2000', 'dd/mm/yyyy')
                                 AND TO_DATE('01/12/2010', 'dd/mm/yyyy')

AND atendime.cd_paciente = PACIENTE.cd_paciente
AND paciente.nm_paciente LIKE '%VITOR%'
)

GROUP BY (nm_paciente)
