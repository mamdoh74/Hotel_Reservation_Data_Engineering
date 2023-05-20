--
create proc load_booking_status_stage
as
insert into booking_status_stage_table(Booking_status) (select distinct Booking_status from Main_Table)
