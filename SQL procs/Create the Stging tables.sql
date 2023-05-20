-- Create Staging Tables 
create table Reserve_stage_tbl
(
Booking_id					varchar(10) primary key ,
no_of_adults				tinyint not null,
no_of_childrens				 tinyint not null,
no_of_weekend_nights		int not null,
no_of_week_nights			int not null,
required_car_parking_space  tinyint not null,
arrival_date_key			int not null,
booking_date_key			int not null,
repeated_guest				tinyint not null,
no_previous_cancellations	int not null,
no_of_previous_bookings		int not null,
avg_price_per_room			float not null,
no_of_special_requests		tinyint not null,
Meal_id						int not null,
Room_type_id				int not null,
Market_segment_type_id		int not null,
Booking_status_id			int not null
);

create table Meal_Stage_Tbl
(
meal_id int primary key identity(1,1),
Meal_Type varchar(30) not null,
);

Create table Room_type_Stage_Tbl
(
Room_type_id int primary key identity(1,1),
Room_Type varchar(15) not null
);

Create table market_segment_type_stage_table
(
Market_segment_type_id int primary key identity(1,1),
market_segement_type varchar(15) not null
);

Create table booking_status_stage_table(
Booking_status_id int primary key identity(1,1),
Booking_status varchar(15) not null
);

