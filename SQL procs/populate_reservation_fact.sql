-- populate the Reservation Fact table 
create proc populate_reservation_fact
as
insert into Reserve_dim_tbl(
							Booking_id					,
							no_of_adults				,
							no_of_childrens				,
							no_of_weekend_nights		,
							no_of_week_nights			,
							required_car_parking_space	,
							arrival_date_key			,
							booking_date_key			,
							repeated_guest				,
							no_previous_cancellations	,
							no_of_previous_bookings		,
							avg_price_per_room			,
							no_of_special_requests		,
							Meal_id						,
							Room_type_id				,
							Market_segment_type_id		,
							Booking_status_id			
							)
(
			select 
							Booking_id				,	
							no_of_adults				,
							no_of_childrens				,
							no_of_weekend_nights		,
							no_of_week_nights			,
							required_car_parking_space  ,
							arrival_date_key			,
							booking_date_key			,
							repeated_guest				,
							no_previous_cancellations	,
							no_of_previous_bookings		,
							avg_price_per_room			,
							no_of_special_requests		,
							Meal_id						,
							Room_type_id				,
							Market_segment_type_id		,
							Booking_status_id			

			from Reserve_stage_tbl )










			truncate table Reserve_dim_tbl