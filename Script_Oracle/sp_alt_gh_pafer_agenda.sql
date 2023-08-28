CREATE OR REPLACE PROCEDURE folha_cb.sp_alt_gh_pafer_agenda(   pCD_PAFUN_CONTR IN folha_cb.gh_pafer_agenda.CD_PAFUN_CONTR%TYPE,   pDT_INI_PER_AQUIS IN folha_cb.gh_pafer_agenda.DT_INI_PER_AQUIS%TYPE,   pDT_PROGR_GOZO IN folha_cb.gh_pafer_agenda.DT_PROGR_GOZO%TYPE,   pDT_PROGR_FIM IN folha_cb.gh_pafer_agenda.DT_PROGR_FIM%TYPE,   pQT_DIAS_FERIAS IN folha_cb.gh_pafer_agenda.QT_DIAS_FERIAS%TYPE,   pQT_DIAS_ABONO IN folha_cb.gh_pafer_agenda.QT_DIAS_ABONO%TYPE,   pFL_ADTO_13SAL_FER IN folha_cb.gh_pafer_agenda.FL_ADTO_13SAL_FER%TYPE,   pFL_AGENDA_FERIAS IN folha_cb.gh_pafer_agenda.FL_AGENDA_FERIAS%TYPE,   pVERID IN folha_cb.gh_pafer_agenda.VERID%TYPE,   pCD_PARCELA IN folha_cb.gh_pafer_agenda.CD_PARCELA%TYPE,   pUSUARIO IN folha_cb.gh_pafer_agenda.USUARIO%TYPE,   pDATA IN folha_cb.gh_pafer_agenda.DATA%TYPE,   pDAT_USUARIO IN folha_cb.gh_pafer_agenda.DAT_USUARIO%TYPE) isbegin   update folha_cb.gh_pafer_agenda set                   DT_INI_PER_AQUIS = pDT_INI_PER_AQUIS,                  DT_PROGR_GOZO = pDT_PROGR_GOZO,                  DT_PROGR_FIM = pDT_PROGR_FIM,                  QT_DIAS_FERIAS = pQT_DIAS_FERIAS,                  QT_DIAS_ABONO = pQT_DIAS_ABONO,                  FL_ADTO_13SAL_FER = pFL_ADTO_13SAL_FER,                  FL_AGENDA_FERIAS = pFL_AGENDA_FERIAS,                  VERID = pVERID,                  CD_PARCELA = pCD_PARCELA,                  USUARIO = pUSUARIO,                  DATA = pDATA,                  DAT_USUARIO = pDAT_USUARIO  where  CD_PAFUN_CONTR = pCD_PAFUN_CONTR                          ;end ;
