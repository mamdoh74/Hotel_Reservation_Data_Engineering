-- load room stage table 
create proc load_room_reserved_stage
as
insert into Room_type_Stage_Tbl(Room_Type) (select distinct room_type_reserved from Main_Table)