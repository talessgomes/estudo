------6) Prestador com mais cirurgias em 2017.

        SELECT *
        FROM (
            SELECT prestador.nm_prestador
            , Count (aviso_cirurgia.cd_aviso_cirurgia) nro_cirurgia   -- nro_cirurgia é uma renomeação para mostrar as cirugias

            FROM prestador
            , atendime
            , aviso_cirurgia

            WHERE  prestador.cd_prestador = atendime.cd_prestador    -- Combinando prestador com atendime
            AND    atendime.cd_atendimento = aviso_cirurgia.cd_atendimento -- Combinando atendime com aviso_cirurgia
            AND atendime.dt_atendimento BETWEEN To_Date('01/01/2017', 'dd/mm/yyyy')
                                              AND To_Date('31/12/2017', 'dd/mm/yyyy')

                GROUP BY prestador.nm_prestador   -- Quantidade de cada prestador
                ORDER BY 2 DESC                   -- Ordenação de 2 números em ordem decrescente
              )
              WHERE ROWNUM <=5       -- Filtro para selecionar os primeiros 5 com mais atendimentos


--      SELECT *
--    FROM (
--        SELECT prestador.nm_prestador
--        , Count(aviso_cirurgia.cd_aviso_cirurgia) nro_cirurgias

--        FROM prestador,
--        atendime,
--        aviso_cirurgia

--        WHERE prestador.cd_prestador = atendime.cd_prestador
--        AND aviso_cirurgia.cd_atendimento = atendime.cd_atendimento
--        AND atendime.dt_atendimento BETWEEN To_Date('01/01/2017', 'DD/MM/YYYY')
--                                            AND To_Date('31/12/2017', 'DD/MM/YYYY')

--        GROUP BY prestador.nm_prestador
--        ORDER BY 2 DESC
--      )
--      WHERE ROWNUM <= 5


--      SELECT *
--FROM (
--      SELECT
--      PRESTADOR.NM_PRESTADOR
--      , Count(AVISO_CIRURGIA.cd_aviso_cirurgia) NRO_CIRURGIAS
--      FROM PRESTADOR,
--      ATENDIME,
--      AVISO_CIRURGIA

--      WHERE PRESTADOR.cd_prestador = ATENDIME.cd_prestador
--      AND AVISO_CIRURGIA.CD_ATENDIMENTO = ATENDIME.CD_ATENDIMENTO
--      AND ATENDIME.DT_ATENDIMENTO BETWEEN To_Date('01/01/2017', 'DD/MM/YYYY')
--                                      AND To_Date('31/12/2017', 'DD/MM/YYYY')

--      GROUP BY PRESTADOR.NM_PRESTADOR
--      ORDER BY 2 DESC
--     )
--     WHERE ROWNUM <= 5