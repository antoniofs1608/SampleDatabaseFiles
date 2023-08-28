create procedure items_add 
@itemName varchar(500), 
@itemDescription nvarchar(max) 
as 
begin try 
	if not exists (select id from items where upper(itemName) = upper(@itemName)) 
	begin 
		raiserror('sp|item already exists', 11, 1)
	end 

	insert into items (itemName, itemDescription)
	select @itemName, @itemDescription 

	select SCOPE_IDENTITY() as id
end try 

begin catch 
	declare @errorMessage nvarchar(max), @errorSeverity int, @errorState int 

	select @errorMessage = ERROR_MESSAGE(), 
	       @errorSeverity = ERROR_SEVERITY(), 
		   @errorState = ERROR_STATE() 
	raiserror(@errorMessage, @errorSeverity, @errorState)
end catch