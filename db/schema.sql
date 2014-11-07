drop table if exists posts cascade;
drop table if exists authors cascade;
drop table if exists tags cascade;
drop table if exists posts_tags cascade;


create table authors(
	id serial primary key,
	user_name varchar(255) not null,
	image_url text,
	bio text
);

create table posts(
	id serial primary key,
	image_url text,
	caption text,
	created_at timestamp,
	updated_at timestamp,
	author_id integer references authors
);

create table tags(
	id serial primary key,
	name varchar(255) not null
);

create table posts_tags(
	post_id integer references posts,
	tag_id integer references tags
);