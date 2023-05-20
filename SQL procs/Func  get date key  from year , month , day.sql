-- function of return key of date 
alter function get_date_key (@year int , @month int , @day int)
returns int
begin 
declare @date_string varchar(20)
declare @date_key int
select @date_string = cast(@year as varchar)+format(@month , '00')+format(@day , '00')
select @date_key = cast(@date_string as int)
return @date_key
end