-- dw press raw data
create table dw_mysql.datawarehouse.press_raw_data
as select * from dl_iceberg.ods.ds_press;