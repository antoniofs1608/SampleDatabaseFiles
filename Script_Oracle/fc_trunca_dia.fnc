create or replace function folha_cb.fc_trunca_dia(d_data IN date) return date is
begin
  return to_date(to_char(d_data,'dd/mm/yyyy'),'dd/mm/yyyy');
  
end ;
/
