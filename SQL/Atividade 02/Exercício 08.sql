------8) Criar uma pesquisa para atendimentos de c�digo maior que 5000 cujo o c�digo do
------prestador do atendimento seja 99, 10 ou 4.

      SELECT  atendime.cd_atendimento

      FROM atendime

      WHERE atendime.cd_atendimento >= 5000
      AND atendime.cd_prestador = 99
      OR atendime.cd_prestador = 10
      OR atendime.cd_prestador = 4
