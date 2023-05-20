-- proc of load the date dimention 
alter proc populate_date_dim @startdate date , @enddate date
as 
begin
truncate table Date_dim;
--first i should make a default row 
insert into Date_dim(
					date_key,
					year,
					month,
					date,
					day,
					Weekend_day,
					Quarter
					) 
			values 
					(
					0,
					0,
					0,
					'1-1-2000',
					0,
					0,
					'Q0'
					);
-- now it is time to load with real data 
while @startdate < @enddate
begin 
insert into Date_dim(
						date_key,
						date,
						year,
						month,
						day,
						Weekend_day,
						Quarter
						)
					values
					(
						dbo.get_date_key(year(@startdate) , MONTH(@startdate) , day(@startdate)),
						@startdate,
						year(@startdate),
						month(@startdate),
						cast(format(@startdate , 'dd')as tinyint),
						case 
						when format(@startdate,'ddd') = 'sat' then 1
						when format(@startdate,'ddd') = 'sun' then 1
						else 0 end,
						'Q'+cast(datepart(q,@startdate)  as varchar)
					)
					;
					set @startdate = DATEADD(DD , 1, @startdate)


end
print 'population operation of date dimention is completed'
end