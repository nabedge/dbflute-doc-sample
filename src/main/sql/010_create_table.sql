drop table posts if exists;
drop table author if exists;

CREATE TABLE author (
  author_id bigint NOT NULL,
  name varchar(255) NOT NULL,
  PRIMARY KEY (author_id)
);
comment ON TABLE author IS 'blog author';
comment ON COLUMN author.name is 'author name';

CREATE TABLE posts (
  post_id bigint NOT NULL,
  title varchar(255) NOT NULL,
  author_id bigint NOT NULL,
  summary text,
  body text,
  created_date timestamp DEFAULT CURRENT_TIMESTAMP(),
  updated_date timestamp DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (post_id)
);
comment ON TABLE posts IS 'blog posts';
comment ON COLUMN posts.title is 'post title';

CREATE INDEX IDX_POST_ID ON posts(post_id);

ALTER TABLE    posts
ADD CONSTRAINT fk_author_id
FOREIGN KEY    (author_id)
REFERENCES     author(author_id);
