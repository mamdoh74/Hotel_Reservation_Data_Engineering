create proc clean_feb_dates
as
update Main_Table set arrival_month =3 , arrival_date = 1 where arrival_month=2 and arrival_date=29