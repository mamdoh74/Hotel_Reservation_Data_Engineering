--
create proc load_market_segment_stage
as
insert into market_segment_type_stage_table (market_segement_type) (select distinct market_segment_type from Main_Table)
