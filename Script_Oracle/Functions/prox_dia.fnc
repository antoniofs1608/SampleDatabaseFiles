create or replace function folha_cb.prox_dia(pData in date) return
varchar2 is v_data date;
begin
select to_char(to_date(pData,'dd/mm/rrrr') + 1,'dd/mm/rrrr') 
into v_data
from dual;
return v_data;
end;
/
