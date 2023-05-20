-- load Fact staging table with data
alter proc Load_reservation_Stage
as
insert into Reserve_stage_tbl (
								Booking_id					,
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
								)
								(
						select 
								Booking_ID,
								no_of_adults,
								no_of_children,
								no_of_weekend_nights		,
								no_of_week_nights			,
								required_car_parking_space,
								dbo.get_date_key(arrival_year , arrival_month , arrival_date),
								dbo.get_datekey_parts_andlead(arrival_year , arrival_month , arrival_date , lead_time),
								repeated_guest,
								no_of_previous_cancellations	,
								no_of_previous_bookings_not_canceled		,
								avg_price_per_room			,
								no_of_special_requests		,
								meal_id,
								Room_type_id			,
								Market_segment_type_id	,
								Booking_status_id		

						from 
							Main_Table , 
							Meal_dim_Tbl , 
							Room_type_dim_Tbl ,
							market_segment_type_dim_table ,
							booking_status_dim_table 
						where 
							Main_table.type_of_meal_plan = Meal_dim_Tbl.Meal_Type and
							Main_table.room_type_reserved = Room_type_dim_Tbl.Room_Type and
							Main_Table.market_segment_type = market_segment_type_dim_table.market_segement_type and
							Main_Table.booking_status = booking_status_dim_table.Booking_status
								
								)
