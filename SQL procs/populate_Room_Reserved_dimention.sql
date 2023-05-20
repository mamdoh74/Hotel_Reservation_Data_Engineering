-- Populate Room reserved 
create proc populate_Room_Reserved_dimention
as
insert into Room_type_dim_Tbl(Room_Type) (select distinct Room_Type from Room_type_Stage_Tbl)
