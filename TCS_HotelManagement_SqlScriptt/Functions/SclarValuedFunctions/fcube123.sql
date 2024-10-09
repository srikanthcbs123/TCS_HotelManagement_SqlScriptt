create function [dbo].[fn_ERRORlOG](@id INT) 
returns table
as
return(select * from ErrorLog where id = @id
)
