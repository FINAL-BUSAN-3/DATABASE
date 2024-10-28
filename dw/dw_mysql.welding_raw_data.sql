-- dw welding_raw_data
create table dw_mysql.datawarehouse.welding_raw_data
as select * from dl_iceberg.ods.ds_welding;