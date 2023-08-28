create or replace function folha_cb.fc_ult_dia_mes(mes date) return date is
  Result date;
  
begin
  
  result:=to_date('01/' || to_char(Mes, 'mm/yyyy'), 'dd/mm/yyyy');
  result:=result + 30;
  
  if to_number(to_char(result, 'mm')) <> to_number(to_char(mes, 'mm')) then
    result:=result-1;
  end if;
    
  return(Result);
end;
/
