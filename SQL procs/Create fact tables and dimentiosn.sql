-- Create Fact table and dimentions 
create table Reserve_dim_tbl
(
Booking_id					varchar(15) primary key ,
no_of_adults				tinyint not null,
no_of_childrens				tinyint not null,
no_of_weekend_nights		int not null,
no_of_week_nights			int not null,
required_car_parking_space	tinyint not null,
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
Booking_status_id			int not null,

);


create table Meal_dim_Tbl
(
meal_id int primary key identity(1,1),
Meal_Type varchar(30) not null,
);

Create table Room_type_dim_Tbl
(
Room_type_id int primary key identity(1,1),
Room_Type varchar(15) not null
);

Create table market_segment_type_dim_table
(
Market_segment_type_id int primary key identity(1,1),
market_segement_type varchar(15) not null
);

Create table booking_status_dim_table(
Booking_status_id int primary key identity(1,1),
Booking_status varchar(15) not null
);



Create table Date_dim
(
date_key int primary key ,
date date not null,
year int not null,
month tinyint not null,
day tinyint not null,
Weekend_day tinyint not null,
Quarter varchar(2) not null

);





