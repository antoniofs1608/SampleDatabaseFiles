create or replace function folha_cb.dia_da_semana(dat in date) return number as
  result number(1);
begin
  select to_char(dat, 'd') into result from dual;
  return result;
exception
  when others then
    raise_application_error(-20001, 'Erro');
end;
/
