-- Populate Booking Status
create proc populate_Booking_status_dimention
as
insert into booking_status_dim_table(Booking_status) (select distinct Booking_status from booking_status_stage_table)


