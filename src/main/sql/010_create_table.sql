drop table posts if exists;
drop table author if exists;

CREATE TABLE author (
  author_id bigint NOT NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY (author_id)
);

CREATE TABLE posts (
  post_id bigint NOT NULL,
  title varchar(255) NOT NULL,
  author_id bigint NOT NULL,
  summary text,
  body text,
  created_date timestamp,
  updated_date timestamp,
  PRIMARY KEY (post_id)
);
