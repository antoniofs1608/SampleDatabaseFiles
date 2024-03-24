create or replace view folha_cb.vw_qtde_dias_afastados as
select to_char(h.dt_ini_per_aquis,'dd/mm/rrrr') as inic, to_char(h.dt_fim_per_aquis,'dd/mm/rrrr') as fim, nvl(sum(aa.dt_ret_afast-aa.dt_ini_afast),0) as afast, h.cd_pafun_contr as matric 

               from gh_pafun_afast aa, gh_pafer_hist h 
               where aa.cd_pafun_contr = h.cd_pafun_contr               
               and h.dt_vigencia_fim='31/12/2099'  
               and aa.dt_ini_afast between h.dt_ini_per_aquis and h.dt_fim_per_aquis
               group by
               h.dt_ini_per_aquis, h.dt_fim_per_aquis, h.cd_pafun_contr

