create external table if not exists stg.stg_naver_news_cmt(
  doc_id string COMMENT '원본기사 doc_id',
  cmt_id string COMMENT '댓글 번호',
  crawl_dt string COMMENT '크롤링 시간',
  cmt_dt string COMMENT '댓글 등록일',
  cmt string COMMENT '댓글 내용',
  url string COMMENT '원본기사 url'
)
row format delimited
fields terminated by '\x01'
stored as textfile
location 'hdfs:///hive/lake/stg.db/stg_naver_news_cmt';