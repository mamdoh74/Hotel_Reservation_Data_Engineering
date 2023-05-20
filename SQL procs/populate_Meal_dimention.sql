-- popoulate Meal 
create proc populate_Meal_dimention
as
insert into Meal_dim_Tbl(Meal_Type) (select distinct Meal_Type from Meal_Stage_Tbl)


