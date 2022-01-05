---- Primeiro Exercício
SELECT Count(*) qtd_atendimento, Tipo_atendimento
FROM (
  SELECT   paciente.nm_paciente
  ,        atendime.dt_atendimento      data_baixa
  ,        atendime.dt_alta             data_alta
  ,        CASE atendime.tp_atendimento
          WHEN 'I' THEN 'Internação'
          ELSE ''
          END                          Tipo_atendimento
  ,        Count(paciente.nm_paciente)     Quantidade
  ,        convenio.nm_convenio         Convenio
  ,        setor.nm_setor               Setor
  ,        especialid.ds_especialid     Especialidade
  ,        cidade.nm_cidade             Nome_cidade

  FROM
          atendime,
          cidade,
          convenio,
          especialid,
          paciente,
          prestador,
          setor,
          ori_ate

  WHERE atendime.tp_atendimento LIKE '%I%'
  AND   atendime.cd_paciente = paciente.cd_paciente (+)
  AND   atendime.cd_convenio = convenio.cd_convenio (+)
  AND   especialid.cd_especialid (+) = atendime.cd_especialid
  AND   atendime.cd_prestador = prestador.cd_prestador (+)
  AND   atendime.cd_ori_ate = ori_ate.cd_ori_ate (+)
  AND   ori_ate.cd_setor = setor.cd_setor (+)
  AND   paciente.cd_cidade = cidade.cd_cidade (+)

  GROUP BY  paciente.nm_paciente,
            atendime.dt_atendimento,
            convenio.nm_convenio,
            atendime.tp_atendimento,
            atendime.dt_alta,
            especialid.ds_especialid,
            setor.nm_setor,
            cidade.nm_cidade
)
GROUP BY Tipo_atendimento
  ORDER BY qtd_atendimento;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---- Segundo Exercício
 SELECT Count (*) qtd_alta
 FROM (
    SELECT atendime.dt_atendimento          baixa,
           atendime.dt_alta                  qtd_alta,
           convenio.nm_convenio             convenio,
           setor.nm_setor                   setor,
           cidade.nm_cidade                 Cidade,
           especialid.ds_especialid         Especialidade

    FROM  atendime,
          paciente,
          convenio,
          setor,
          cidade,
          especialid,
          ori_ate

    WHERE atendime.cd_paciente = paciente.cd_paciente (+)
    AND   convenio.cd_convenio (+) = atendime.cd_convenio
    AND   atendime.cd_ori_ate = ori_ate.cd_ori_ate (+)
    AND   ori_ate.cd_setor = setor.cd_setor
    AND   paciente.cd_cidade = cidade.cd_cidade (+)
    AND   especialid.cd_especialid (+) = atendime.cd_especialid
    AND   atendime.dt_alta IS NOT NULL

    GROUP BY  atendime.dt_atendimento,
              atendime.dt_alta,
              convenio.nm_convenio,
              setor.nm_setor,
              cidade.nm_cidade,
              especialid.ds_especialid
      )
    ORDER BY qtd_alta;


---- Terceiro exercício
/* SELECT   paciente.nm_paciente,
         Count (atendime.sn_obito) AS obito,
         (atendime.dt_alta - atendime.dt_atendimento) AS periodo_internacao,
         convenio.nm_convenio,
         setor.nm_setor,
         cidade.nm_cidade,
         especialid.ds_especialid   AS   Especialidade

FROM  atendime,
      paciente,
      convenio,
      setor,
      itreg_fat,
      reg_fat,
      cidade,
      especialid

WHERE      atendime.cd_paciente = paciente.cd_paciente
  AND      atendime.cd_convenio = convenio.cd_convenio
  AND      atendime.cd_atendimento = reg_fat.cd_atendimento
  AND      itreg_fat.cd_reg_fat = reg_fat.cd_reg_fat
  AND      itreg_fat.cd_setor = setor.cd_setor
  AND      paciente.cd_cidade = cidade.cd_cidade
  AND      especialid.cd_especialid = atendime.cd_especialid
  AND      atendime.sn_obito = 'S'


GROUP BY    paciente.nm_paciente,
            (atendime.dt_alta - atendime.dt_atendimento),
            convenio.nm_convenio,
            setor.nm_setor,
            cidade.nm_cidade,
            especialid.ds_especialid
ORDER BY 3; */
------------------------------------------------------------------------------------------------------


SELECT Count (*)  qtd_obito
FROM (
  SELECT  paciente.nm_paciente,
          atendime.hr_alta         Alta,
          convenio.nm_convenio     Convenio_paciente,
          atendime.sn_obito        Obito,
          setor.nm_setor           Nome_setor,
          especialid.ds_especialid Especialidade,
          cidade.nm_cidade         Cidade

  FROM   atendime,
        paciente,
        convenio,
        setor,
        especialid,
        cidade,
        ori_ate

  WHERE  atendime.cd_paciente = paciente.cd_paciente
  AND    atendime.cd_ori_ate = ori_ate.cd_ori_ate (+)
  AND    atendime.cd_convenio = convenio.cd_convenio
  AND    atendime.cd_setor_obito = setor.cd_setor (+)
  AND    atendime.cd_especialid = especialid.cd_especialid (+)
  AND    paciente.cd_cidade = cidade.cd_cidade (+)
  AND    sn_obito IN ('S',
                      'O')
  AND     sn_obito IS NOT NULL
)


----- Quarta Atividade

/*  SELECT  paciente.nm_paciente,
          atendime.dt_atendimento Baixa_atendimento,
          atendime.dt_alta        Alta_atendimento,
          convenio.nm_convenio,
          setor.nm_setor,
          cidade.nm_cidade,
          Count (atendime.tp_atendimento) qts_atendimento,
          CASE atendime.tp_atendimento
          WHEN 'E'  THEN 'Externo'
          ELSE ''
          END                     Tipo_atendimento

  FROM  atendime,
        paciente,
        convenio,
        setor,
        itreg_fat,
        reg_fat,
        cidade

    WHERE    atendime.cd_paciente = paciente.cd_paciente
    AND      paciente.cd_cidade = cidade.cd_cidade
    AND      atendime.cd_convenio = convenio.cd_convenio
    AND      atendime.cd_atendimento = reg_fat.cd_atendimento
    AND      itreg_fat.cd_reg_fat = reg_fat.cd_reg_fat
    AND      itreg_fat.cd_setor = setor.cd_setor
    AND      atendime.tp_atendimento LIKE '%E%'

    GROUP BY paciente.nm_paciente,
            atendime.tp_atendimento,
            atendime.dt_atendimento,
            atendime.dt_alta,
            convenio.nm_convenio,
            setor.nm_setor,
            cidade.nm_cidade

  ORDER BY 1;        */


 SELECT Count (*) qtd_atendimento, Tipo_atendimento                                                                                        ------------------------------
 FROM (
  SELECT  paciente.nm_paciente,
          atendime.dt_atendimento Baixa_atendimento,
          atendime.dt_alta        Alta_atendimento,
          atendime.tp_atendimento qtd_atendimento,
          CASE atendime.tp_atendimento
          WHEN 'E'  THEN 'Externo'
          ELSE ''
          END                     Tipo_atendimento

  FROM  Atendime,
        paciente
  WHERE atendime.cd_paciente = paciente.cd_paciente
  AND      atendime.tp_atendimento LIKE '%E%'
  )
  GROUP BY Tipo_atendimento
  ORDER BY qtd_atendimento ;


------ Quinta atividade
 /*   SELECT  atendime.dt_atendimento     Baixa_atendimento,
            atendime.dt_alta            Alta_atendimento,
            exa_Rx.ds_exa_rx            Exames,
            Count (exa_Rx.ds_exa_rx)    qtd_exame,
            convenio.nm_convenio        Convenio,
            setor.nm_setor              Setor,
            especialid.ds_especialid   AS  Especialidade,
            cidade.nm_cidade            nome_cidade

    FROM   atendime,
          ped_rx,
          itped_rx,
          exa_Rx,
          convenio,
          setor,
          itreg_fat,
          reg_fat,
          especialid,
          cidade,
          paciente

      WHERE  atendime.cd_atendimento = ped_rx.cd_atendimento
      AND    atendime.cd_atendimento = reg_fat.cd_atendimento
      AND    atendime.cd_paciente = paciente.cd_paciente
      AND    ped_rx.cd_ped_rx = itped_rx.cd_ped_rx
      AND    convenio.cd_convenio = atendime.cd_convenio
      AND    itped_rx.cd_exa_rx = exa_Rx.cd_exa_rx
      AND    itreg_fat.cd_reg_fat = reg_fat.cd_reg_fat
      AND    itreg_fat.cd_setor = setor.cd_setor
      AND    especialid.cd_especialid = atendime.cd_especialid
      AND    paciente.cd_cidade = cidade.cd_cidade

    GROUP BY  atendime.dt_atendimento,
              atendime.dt_alta,
              exa_Rx.ds_exa_rx,
              convenio.nm_convenio,
              setor.nm_setor,
              especialid.ds_especialid,
              cidade.nm_cidade
    ORDER BY 1;              */

    SELECT Count (*) qtd_exa_imagem
    FROM (
    SELECT atendime.dt_atendimento   hora_inicial,
           atendime.dt_alta          hora_alta,
           exa_Rx.ds_exa_rx          exames,
           convenio.nm_convenio      convenio,
           especialid.ds_especialid  especialidade,
           cidade.nm_cidade          cidade,
           setor.nm_setor            setor


    FROM  Atendime,
          exa_Rx,
          itped_rx,
          ped_rx,
          convenio,
          especialid,
          cidade,
          paciente,
          setor,
          ori_ate

    WHERE atendime.cd_atendimento = ped_rx.cd_atendimento
    AND   ped_rx.cd_ped_rx (+) = itped_rx.cd_ped_rx
    AND   itped_rx.cd_exa_rx = exa_Rx.cd_exa_rx (+)
    AND   convenio.cd_convenio (+) = atendime.cd_convenio
    AND   atendime.cd_especialid = especialid.cd_especialid (+)
    AND   atendime.cd_ori_ate = ori_ate.cd_ori_ate
    AND   ori_ate.cd_setor = setor.cd_setor  (+)
    AND   atendime.cd_paciente = paciente.cd_paciente
    AND   paciente.cd_cidade = cidade.cd_cidade  (+)
    )


------Sexta Atividade
  SELECT Count(*) qtd_exame
  FROM (
      SELECT  exa_rx.ds_exa_rx        exames,
              especialid.ds_especialid qtd_atendimento,
              atendime.dt_atendimento   Baixa,
              atendime.dt_alta          Alta,
              setor.nm_setor            Setor,
              especialid.ds_especialid  Especialidade,
              cidade.nm_cidade         Cidade,
              itped_rx.sn_realizado    realizado

      FROM  atendime,
            pro_fat,
            itreg_fat,
            setor,
            reg_fat,
            especialid,
            cidade,
            paciente,
            ori_ate,
            exa_rx ,
            ped_rx,
            itped_rx

        WHERE exa_rx.cd_exa_rx = itped_rx.cd_exa_rx
        AND   itreg_fat.cd_setor = setor.cd_setor
        AND   itreg_fat.cd_pro_fat = pro_fat.cd_pro_fat
        AND   atendime.cd_ori_ate = ori_ate.cd_ori_ate (+)
        AND   ori_ate.cd_setor = setor.cd_setor  (+)
        AND   itreg_fat.cd_reg_fat = reg_fat.cd_reg_fat
        AND   atendime.cd_atendimento = reg_fat.cd_atendimento
        AND   especialid.cd_especialid = atendime.cd_especialid
        AND   atendime.cd_paciente = paciente.cd_paciente
        AND   cidade.cd_cidade = paciente.cd_cidade
        AND   ped_rx.cd_atendimento = atendime.cd_atendimento
        AND   itped_rx.cd_ped_rx = ped_rx.cd_ped_rx (+)
    )






------Sétima Atividade

/* SELECT prestador.nm_prestador            Medico,
      cirurgia.ds_cirurgia              Tipo_Parto,
      Count(cirurgia.ds_cirurgia)       Quantidade,
      atendime.dt_atendimento           Data_Baixa,
      atendime.dt_alta                  Data_Alta,
      convenio.nm_convenio              Convenio,
      setor.nm_setor                    Setor,
      cidade.nm_cidade                  Cidade

FROM paciente,
     cirurgia,
     atendime,
     convenio,
     setor,
     cidade,
     cirurgia_aviso,
     pro_fat,
     prestador

WHERE cirurgia.ds_cirurgia LIKE '%CESARIANA%'
AND   pro_fat.cd_pro_fat = cirurgia.cd_pro_fat
AND   cirurgia_aviso.cd_cirurgia = cirurgia.cd_cirurgia
AND   cirurgia_aviso.cd_convenio = convenio.cd_convenio
AND   atendime.cd_setor_obito = setor.cd_setor
AND   atendime.cd_convenio = convenio.cd_convenio
AND   cidade.cd_cidade = paciente.cd_cidade
AND   atendime.cd_paciente = paciente.cd_paciente
AND   atendime.cd_prestador = prestador.cd_prestador

GROUP BY cirurgia.ds_cirurgia,
         atendime.dt_atendimento,
         atendime.dt_alta,
         convenio.nm_convenio,
         setor.nm_setor,
         cidade.nm_cidade,
         prestador.nm_prestador

UNION

SELECT prestador.nm_prestador            Medico,
       cirurgia.ds_cirurgia              Tipo_Parto,
       Count(cirurgia.ds_cirurgia)       Quantidade,
       atendime.dt_atendimento           Data_Baixa,
       atendime.dt_alta                  Data_Alta,
       convenio.nm_convenio              Convenio,
       setor.nm_setor                    Setor,
       cidade.nm_cidade                  Cidade

FROM paciente,
     cirurgia,
     atendime,
     convenio,
     setor,
     cidade,
     cirurgia_aviso,
     pro_fat,
     prestador

WHERE cirurgia.ds_cirurgia LIKE 'PARTO%'
AND   pro_fat.cd_pro_fat = cirurgia.cd_pro_fat
AND   cirurgia_aviso.cd_cirurgia = cirurgia.cd_cirurgia
AND   cirurgia_aviso.cd_convenio = convenio.cd_convenio
AND   atendime.cd_setor_obito = setor.cd_setor
AND   atendime.cd_convenio = convenio.cd_convenio
AND   cidade.cd_cidade = paciente.cd_cidade
AND   atendime.cd_paciente = paciente.cd_paciente
AND   atendime.cd_prestador = prestador.cd_prestador

GROUP BY cirurgia.ds_cirurgia,
         atendime.dt_atendimento,
         atendime.dt_alta,
         convenio.nm_convenio,
         setor.nm_setor,
         cidade.nm_cidade,
         prestador.nm_prestador

ORDER BY 4;           */

SELECT Count (*) qtd_parto,
tp_parto
FROM (
   SELECT  aviso_cirurgia.nm_paciente,
           CASE WHEN cirurgia_aviso.cd_cirurgia IN (205,1267, 3463, 3464, 3661) THEN 'CESARIANA'
                WHEN cirurgia_aviso.cd_cirurgia IN (896,899,3467) THEN 'PARTO NORMAL'
           ELSE 'CESARIANA'
           END  tp_parto,
           atendime.dt_atendimento   Hora_inicial,
           atendime.dt_alta          Hora_final,
         --  convenio.nm_convenio      Convenio,
           setor.nm_setor            Setor,
           cidade.nm_cidade          Cidade
   FROM   aviso_cirurgia,
          cirurgia_aviso,
          paciente,
          atendime,
          convenio,
          setor,
          cidade,
          ori_ate
   WHERE  cirurgia_aviso.cd_aviso_cirurgia  = aviso_cirurgia.cd_aviso_cirurgia
   AND    aviso_cirurgia.nm_paciente = paciente.nm_paciente
    AND    atendime.cd_paciente = paciente.cd_paciente
   AND    convenio.cd_convenio = atendime.cd_convenio
   AND    atendime.cd_ori_ate = ori_ate.cd_ori_ate (+)
   AND    ori_ate.cd_setor = setor.cd_setor
   AND    paciente.cd_cidade = cidade.cd_cidade (+)
   AND    cirurgia_aviso.cd_cirurgia IN (205,1267, 3463, 3464, 3661, 896,899,3467)

)
GROUP BY tp_parto;


-- parto normal IN (899, 3467, 3468)

---- Oitava atividade
/*  SELECT Count (*) Quantidade, Porte
FROM
    SELECT    prestador_cirurgia.cd_prestador         Cirurgiao,
              Count (prestador_cirurgia.cd_prestador) Qtd_cirurgia,
              aviso_cirurgia.dt_inicio_cirurgia      Data_inicio,
              aviso_cirurgia.dt_prev_alta            Data_saida,
              cirurgia.tp_cirurgia                   Tipo,
              cirurgia.cd_porte_cirurgia             Porte,
              convenio.nm_convenio                   Convenio,
              especialid.tp_especialid               Especialidade,
              cidade.nm_cidade                       Cidade,
              aviso_cirurgia.nm_paciente

    FROM    aviso_cirurgia,
            prestador_cirurgia,
            cirurgia,
            atendime,
            prestador,
            cidade,
            especialid,
            convenio,
            cirurgia_aviso,
            paciente

      WHERE   aviso_cirurgia.cd_paciente = paciente.cd_paciente
      AND     prestador.cd_prestador = prestador_cirurgia.cd_prestador
      AND     atendime.cd_prestador = prestador.cd_prestador
      AND     atendime.cd_paciente = paciente.cd_paciente
      AND     cidade.cd_cidade = paciente.cd_cidade
      AND     especialid.cd_especialid = atendime.cd_especialid
      AND     aviso_cirurgia.cd_atendimento = atendime.cd_atendimento
      AND     convenio.cd_convenio = atendime.cd_convenio
      AND     cirurgia_aviso.cd_cirurgia = cirurgia.cd_cirurgia


    GROUP BY prestador_cirurgia.cd_prestador,
            aviso_cirurgia.dt_inicio_cirurgia,
            aviso_cirurgia.dt_prev_alta,
            cirurgia.tp_cirurgia,
            cirurgia.cd_porte_cirurgia,
            convenio.nm_convenio,
            especialid.tp_especialid,
            cidade.nm_cidade,
            aviso_cirurgia.nm_paciente
)
   GROUP BY Porte
    ORDER BY Porte; */


SELECT  Count (*) qtd_cirurgia
 FROM (
    SELECT        prestador_cirurgia.cd_prestador        cirurgiao,
                  aviso_cirurgia.dt_inicio_cirurgia      data_inicio,
                  aviso_cirurgia.dt_prev_alta            data_saida,
                  cirurgia.tp_cirurgia                   tipo_cirugia,
                  convenio.nm_convenio                   convenio,
                  especialid.ds_especialid               especialidade,
                  cidade.nm_cidade                       cidade

    FROM  aviso_cirurgia,
          prestador_cirurgia,
          cirurgia_aviso,
          cirurgia,
          paciente,
          convenio,
          atendime,
          especialid,
          cidade,
          prestador
    WHERE aviso_cirurgia.cd_paciente = paciente.cd_paciente (+)
    AND     aviso_cirurgia.cd_aviso_cirurgia = cirurgia_aviso.cd_aviso_cirurgia
    AND   cirurgia_aviso.cd_cirurgia = cirurgia.cd_cirurgia
    AND   atendime.cd_paciente = paciente.cd_paciente
    AND   atendime.cd_convenio = convenio.cd_convenio (+)
    AND     especialid.cd_especialid (+) = atendime.cd_especialid
    AND     cidade.cd_cidade = paciente.cd_cidade
    AND     prestador.cd_prestador (+) = prestador_cirurgia.cd_prestador
    AND     atendime.cd_prestador = prestador.cd_prestador (+)
 )


SELECT Count (*) qtd_cirurgia
FROM (
    SELECT  prestador_cirurgia.cd_prestador      cirurgiao,
            aviso_cirurgia.dt_inicio_cirurgia    data_inicio,
            aviso_cirurgia.dt_fim_cirurgia          data_alta,
            cirurgia.tp_cirurgia                 tipo_cirurgia,
            convenio.nm_convenio                 convenio,
            cidade.nm_cidade                     cidade,
            especialid.ds_especialid             especialidade
    FROM   aviso_cirurgia,
          prestador_cirurgia,
          cirurgia,
          cirurgia_aviso,
          convenio,
          atendime,
          paciente,
          cidade,
          especialid,
          prestador
    WHERE   cirurgia_aviso.cd_cirurgia = cirurgia.cd_cirurgia (+)
    AND     aviso_cirurgia.cd_aviso_cirurgia(+) = cirurgia_aviso.cd_aviso_cirurgia
    AND     atendime.cd_prestador = prestador.cd_prestador
    AND     prestador_cirurgia.cd_prestador(+) = prestador.cd_prestador
    AND     aviso_cirurgia.cd_paciente = paciente.cd_paciente
    AND     atendime.cd_paciente = paciente.cd_paciente (+)
    AND     atendime.cd_convenio = convenio.cd_convenio
    AND     cidade.cd_cidade = paciente.cd_cidade
    AND     especialid.cd_especialid (+) = atendime.cd_especialid
    AND     aviso_cirurgia.dt_inicio_cirurgia IS NOT NULL

    );
