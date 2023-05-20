-- Populate Market segment 
create proc populate_Market_segment_dimention
as
insert into market_segment_type_dim_table(market_segement_type) (select distinct market_segement_type from market_segment_type_stage_table)



