SELECT * FROM embaixadores.depe;

-- Neste comando será exibida a contagem das linhas da tabela de depe por estado:
SELECT SG_UF, COUNT(SG_UF) AS CONTAGEM FROM DEPE
GROUP BY SG_UF
ORDER BY CONTAGEM
;

-- informações com VÁRIAS Tabelas
SELECT
	tb_prc.CD_PRC,
	tb_prc.CD_PRF_UND,
	tb_prc.CD_PRF_OPER,
	tb_prc.DT_ENTD_PRC,
	tb_prc.DT_SAID_PRC,
	tb_prc.CD_AGRUP_PRC,
	tb_tip_agrup_prc.NM_AGRUP_PRC,
	tb_prc.CD_TIP_ATVD,
	tb_tip_atvd.NM_TIP_ATVD,
    tb_prc.CD_TIP_PRC,
    tb_tip_prc.NM_TIP_PRC,
    tb_prc.CD_ETP,
    tb_etp.NM_ETP
FROM 
tb_prc
LEFT JOIN tb_tip_agrup_prc ON (tb_prc.CD_AGRUP_PRC = tb_tip_agrup_prc.CD_AGRUP_PRC)
LEFT JOIN tb_tip_atvd ON (tb_prc.CD_TIP_ATVD = tb_tip_atvd.CD_TIP_ATVD)
LEFT JOIN tb_tip_prc ON (tb_prc.CD_TIP_PRC = tb_tip_prc.CD_TIP_PRC)
LEFT JOIN tb_etp on (tb_prc.CD_ETP = tb_etp.CD_ETP)
;

-- upload de dados na tabela existente

UPDATE embaixadores.tb_prc SET DT_ENTD_PRC = '54' WHERE CD_PRC = '';

UPDATE embaixadores.tb_prc SET DT_ENTD_PRC = '2019-11-27 00:00:00' WHERE CD_PRC = '25a7e0af53dade9a3e8ae7b32db81665';