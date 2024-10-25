CREATE TABLE dl_iceberg.ods.car_defects (
  defect_count VARCHAR COMMENT '결함횟수',
  defect_date VARCHAR COMMENT '결함날짜',
  defect_distance VARCHAR COMMENT '결함발생시 주행거리',
  defect_speed VARCHAR COMMENT '결함발생시 속도',
  crawl_dt VARCHAR COMMENT '크롤링 시간',
  car_name VARCHAR COMMENT '차명',
  car_type VARCHAR COMMENT '차종',
  car_manufacturer VARCHAR COMMENT '제작(수입)사',
  car_year VARCHAR COMMENT '모델연도',
  car_transmission VARCHAR COMMENT '변속기',
  car_engine_capacity VARCHAR COMMENT '엔진배기량',
  car_fuel VARCHAR COMMENT '사용연료',
  defect_content VARCHAR COMMENT '결함내용',
  part_dt VARCHAR COMMENT '크롤링 월 파티션 키'
) WITH (
  partitioning = ARRAY['part_dt'],
  sorted_by = ARRAY['car_name', 'defect_date']
);