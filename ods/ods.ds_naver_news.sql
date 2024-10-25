-- ods naver news
create table dl_iceberg.ods.ds_naver_news(
  doc_id varchar COMMENT '문서 번호',
  url varchar COMMENT '네이버 뉴스 링크',
  section varchar COMMENT '분야',
  crawl_dt varchar COMMENT '크롤링 시간',
  media_com varchar COMMENT '언론사',
  titile varchar COMMENT '기사제목',
  contents varchar COMMENT '내용',
  part_dt varchar COMMENT '일 파티션 키'
);
