create or replace function folha_cb.fc_data(str_data varchar2) return date is
  Result Date;
begin
    If str_data is null Then
        return null;
    Else
        return to_date(str_data,'dd/mm/yyyy');
    End If;
  
  return(Result);
end ;
/
