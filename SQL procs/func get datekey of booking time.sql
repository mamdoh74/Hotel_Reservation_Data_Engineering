-- function of return key of date 
create function get_datekey_parts_andlead (@year int , @month int , @day int , @lead int)
returns int
begin 
declare @olddate date
declare @newdate date
declare @date_string varchar(20)
declare @date_key int

select @olddate = cast(cast(@year as varchar)+'-'+cast(@month as varchar)+'-'+cast(@day as varchar) as date)
select @newdate = dateadd(day , -@lead , @olddate)
select @year = year(@newdate)
select @month = MONTH(@newdate)
select @day = day(@newdate)

select @date_string = cast(@year as varchar)+format(@month , '00')+format(@day , '00')

select @date_key = cast(@date_string as int)
return @date_key
end