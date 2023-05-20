-- Create Relationships between Fact table and the other dimentions 
create proc create_relations_between_tables
as
begin
alter table Reserve_dim_tbl add Constraint arrival_date_FK Foreign key (arrival_date_key) references date_dim(date_key);
alter table Reserve_dim_tbl add Constraint Meal_type_FK Foreign key (Meal_id) references Meal_dim_Tbl(Meal_id);
alter table Reserve_dim_tbl add Constraint Room_Type_FK Foreign key (Room_type_id) references Room_type_dim_Tbl(Room_type_id);
alter table Reserve_dim_tbl add Constraint Maaket_Segemnt_FK Foreign key (Market_segment_type_id) references market_segment_type_dim_table(Market_segment_type_id);
alter table Reserve_dim_tbl add Constraint Booking_FK Foreign key (Booking_status_id) references booking_status_dim_table(Booking_status_id);
end