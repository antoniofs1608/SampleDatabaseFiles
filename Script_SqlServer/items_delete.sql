create procedure items_delete
@id bigint 
as 
begin try 
	if not exists (select id from items where id = @id) 
	begin 
		raiserror('sp|no records found', 11, 1)
	end

	declare @itemName varchar(500) 
	select @itemName = itemName from items where id =@id

	delete from items where id = @id

	select @itemName as itemName
end try 

begin catch 
	declare @errorMessage nvarchar(max), @errorSeverity int, @errorState int 

	select @errorMessage = ERROR_MESSAGE(), 
	       @errorSeverity = ERROR_SEVERITY(), 
		   @errorState = ERROR_STATE() 
	raiserror(@errorMessage, @errorSeverity, @errorState)
end catch