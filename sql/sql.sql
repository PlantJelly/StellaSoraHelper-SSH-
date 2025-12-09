create table ssh_member(
no number(7) primary key,
id varchar2(100) not null unique,
password varchar2(100) not null,
nickname varchar2(100) unique,
phone_number varchar2(20),
email varchar2(100),
reg_date date default sysdate
);

create sequence seq_ssh_member_no;

alter table ssh_member add type varchar2(10) default 'USER' not null;

create table ssh_build(
no number(7) primary key,
title varchar2(200) not null,
user_no number(7),
nickname varchar2(100) not null,
password varchar2(100),
content varchar2(1000) not null,
reg_date date default sysdate,
view_cnt number(5) default 0,
recommend_cnt number(5) default 0,
constraint fk_build_user_no foreign key(user_no) references ssh_member(no) on delete set null
);

create sequence seq_ssh_build_no;

create table ssh_character(
no number(7) primary key,
name varchar2(100) not null,
img_path varchar2(100)
);

create sequence seq_ssh_character_no;

create table ssh_potential(
no number(7) not null,
name varchar2(100) not null,
char_no number(7) not null,
rank varchar2(20) not null,
type varchar2(20),
img_path varchar2(100),
constraint pk_ssh_potential primary key (char_no, no),
constraint fk_pot_char_no foreign key(char_no) references ssh_character(no) on delete cascade
);

create table ssh_build_detail(
build_no number(7) not null,
type varchar2(100),
char_no number(7) not null,
pot_no number(7) not null,
constraint fk_detail_build_no foreign key(build_no) references ssh_build(no) on delete cascade,
constraint fk_detail_potential foreign key(char_no, pot_no) references ssh_potential(char_no, no) on delete cascade
);

create table ssh_reply(
no number(7) primary key,
content varchar2(1000) not null,
user_no number(7),
nickname varchar2(100) not null,
password varchar2(100),
reg_date date default sysdate,
build_no number(7) not null,
constraint fk_reply_build_no foreign key(build_no) references ssh_build(no) on delete cascade,
constraint fk_reply_user_no foreign key(user_no) references ssh_member(no) on delete set null
);

create sequence seq_ssh_reply_no;

create table ssh_build_recommend(
build_no number(7) not null,
user_no number(7) not null,
reg_date date default sysdate,
constraint fk_build_rec_build_no foreign key(build_no) references ssh_build(no) on delete cascade,
constraint fk_build_rec_user_no foreign key(user_no) references ssh_member(no) on delete cascade
);

commit;

select *
  from ssh_member;
  
update ssh_member
   set type = 'ADMIN'
 where no = 3;

select *
  from ssh_build;
  
select *
  from ssh_build
 where no = 2
 ;
 
update ssh_build
   set view_cnt = view_cnt + 1
   where no = 2;
 
insert into ssh_build(no, title, nickname, password, content)
values(seq_ssh_build_no.nextval, 'test2', 'test2', 'test2', 'test2');
  
insert into ssh_build(no, title, nickname, user_no, content)
values(seq_ssh_build_no.nextval, 'test3', 'test', 1, 'test3');
  
select *
  from ssh_character;

select *
  from ssh_potential;

select *
  from ssh_build_detail;

select *
  from ssh_reply;
  
drop table ssh_build_detail cascade constraints;

drop table ssh_potential cascade constraints;