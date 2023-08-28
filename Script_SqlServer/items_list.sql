create procedure items_list 
@id bigint = 0 
as 
begin try 
	if exists (select id from items where id = @id) and (@id >  0) 
	begin 
		raiserror('sp|no records found', 11, 1)
	end 

	select id, itemName, itemDescription 
	  from items 
	 where (id = @id or @id = 0) 
end try 

begin catch 
	declare @errorMessage nvarchar(max), @errorSeverity int, @errorState int 

	select @errorMessage = ERROR_MESSAGE(), 
	       @errorSeverity = ERROR_SEVERITY(), 
		   @errorState = ERROR_STATE() 
	raiserror(@errorMessage, @errorSeverity, @errorState)
end catch