create or replace function folha_cb.prim_dia(pData in date) return
varchar2 is v_result date;

begin
  select to_date('01/' || to_char(pData, 'mm/yyyy'), 'dd/mm/yyyy')
  into v_result
  from dual; 
  
return v_result;
end;
/
