-- stg car_defects
create external table if not exists stg.stg_car_defects(
  defect_count string COMMENT '결함횟수',
  defect_date string COMMENT  '결함날짜',
  defect_distance string COMMENT '결함발생시 주행거리',
  defect_speed string COMMENT '결함발생시 속도',
  crawl_dt string COMMENT '크롤링 시간',
  car_name string COMMENT  '차명',
  car_type string COMMENT  '차종',
  car_manufacturer string COMMENT '제작(수입)사',
  car_year string COMMENT '모델연도',
  car_transmission string COMMENT '변속기',
  car_engine_capacity string COMMENT '엔진배기량',
  car_fuel string COMMENT '사용연료',
  defect_content  string COMMENT '결함내용'
)
row format delimited
fields terminated by '\t'
stored as textfile
location 'hdfs:///hive/lake/stg.db/stg_car_defects'
tblproperties ("skip.header.line.count"="1");