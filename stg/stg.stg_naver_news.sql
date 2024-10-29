create table dl_iceberg.ods.ds_naver_news(
  doc_id bigint COMMENT '문서 번호',
  section varchar COMMENT '분야',
  crawl_dt varchar COMMENT '크롤링 시간',
  media_com varchar COMMENT '언론사',
  titile varchar COMMENT '기사제목',
  contents varchar COMMENT '내용',
  part_dt varchar COMMENT '일 파티션 키',
  url varchar COMMENT 'url',
  publish_date varchar COMMENT '기사작성일'
)
with(
  partitioning = array['part_dt']
);