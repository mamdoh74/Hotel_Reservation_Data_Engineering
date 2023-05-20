-- procedure of breaking relations 
alter proc break_relations
as
begin
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'arrival_date_FK')
  ALTER TABLE Reserve_dim_tbl DROP CONSTRAINT arrival_date_FK;
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Meal_type_FK')
  ALTER TABLE Reserve_dim_tbl DROP CONSTRAINT Meal_type_FK;
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Room_Type_FK')
  ALTER TABLE Reserve_dim_tbl DROP CONSTRAINT Room_Type_FK;
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Maaket_Segemnt_FK')
  ALTER TABLE Reserve_dim_tbl DROP CONSTRAINT Maaket_Segemnt_FK;
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'Booking_FK')
  ALTER TABLE Reserve_dim_tbl DROP CONSTRAINT Booking_FK;
end