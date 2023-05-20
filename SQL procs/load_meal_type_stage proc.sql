-- proc of load_meal_type_stage 
create proc load_meal_type_stage
as
insert into Meal_Stage_Tbl(Meal_Type) (select distinct type_of_meal_plan from Main_Table)
