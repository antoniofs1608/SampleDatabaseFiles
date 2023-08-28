create or replace function folha_cb.fc_subtrai_datas(pData1 in date, pData2 in date) return
number as v_result number;

begin
     select to_date(pData1,'dd/mm/rrrr') - to_date(pData2,'dd/mm/rrrr') into v_result from dual;

return v_result;

exception 
 when others then
 return 0;

end;
/
