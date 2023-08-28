create or replace function folha_cb.compara_datas(pData1 in date,
                                                  pData2 in date) return 
number is v_flag number;
begin
v_flag := 0;
     if(pData1 > pData2)then
        v_flag := 1;
     end if; 
     
     if(pData1 = pData2)then
       v_flag := 0;
     end if;
     
     if(pData2 > pData1)then
       v_flag := -1;
     end if;  
                   
return v_flag;
end;
/
