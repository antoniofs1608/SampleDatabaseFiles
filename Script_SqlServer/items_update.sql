create procedure items_update
@id bigint, 
@itemName varchar(500), 
@itemDescription nvarchar(max) 
as 
begin try 
	if not exists (select id from items where id = @id) 
	begin 
		raiserror('sp|no records found', 11, 1)
	end

	declare @oldItemName varchar(500) 
	select @oldItemName = itemName from items where id =@id

	if (@oldItemName <> @itemName)
	begin
		if exists (select id from items where upper(itemName) = upper(@itemName)) 
		begin 
			raiserror('sp|item already exists', 11, 1)
		end 
	end 

	update items 
	   set itemName = @itemName, 
		   itemDescription = @itemDescription 
     where id = @id
end try 

begin catch 
	declare @errorMessage nvarchar(max), @errorSeverity int, @errorState int 

	select @errorMessage = ERROR_MESSAGE(), 
	       @errorSeverity = ERROR_SEVERITY(), 
		   @errorState = ERROR_STATE() 
	raiserror(@errorMessage, @errorSeverity, @errorState)
end catch