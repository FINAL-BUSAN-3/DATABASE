create table dl_iceberg.ods.naver_news_cmt(
  doc_id VARCHAR COMMENT '원본기사 doc_id',
  cmt_id VARCHAR COMMENT  '댓글 번호',
  crawl_dt VARCHAR COMMENT '크롤링 시간',
  cmt_dt VARCHAR COMMENT  '댓글 등록일',
  cmt VARCHAR COMMENT  '댓글 내용',
  url VARCHAR COMMENT '원본기사 url',
  part_dt VARCHAR COMMENT '일 파티션 키'
)with (
    partitioning = array['part_dt'],
    sorted_by = array['doc_id', 'cmt_id']
);