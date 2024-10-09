CREATE procedure [dbo].[Sp_LoginForm](
  @Username varchar(max), 
  @password varchar(max)
) 
as
begin 
set nocount on
if(
    (
      select 
        count(*) 
      from 
        LoginRegister 
      where 
        Username = @Username 
        and password = @password
    )> 0
  ) begin 
select 
  '400' 'statuscode', 
  'user details valid' 'message' end else begin 
select 
  '500' 'statuscode', 
  'user details are not valid' 'message' 
  end 
  end

