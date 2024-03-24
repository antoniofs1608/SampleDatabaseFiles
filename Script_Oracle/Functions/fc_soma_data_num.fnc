create or replace function folha_cb.fc_soma_data_num(pData in date,
                                                        pDias in number)
  return varchar2 as
  vData date;

begin
  select to_char(to_date(to_char(pData), 'dd/mm/rrrr') + pDias,
                 'dd/mm/rrrr')
    into vData
    from dual;
    
return to_char(vData,'dd/mm/rrrr');    

exception
 when others then
 return null;
end;
/
