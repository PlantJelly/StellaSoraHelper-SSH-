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
  
select *
  from ssh_build_recommend;
  
insert into ssh_build_recommend(build_no, user_no)
values(61, 1);
  
drop table ssh_build_detail cascade constraints;

drop table ssh_potential cascade constraints;

select *
  from ssh_character;
  
INSERT INTO ssh_character (no, name, img_path) VALUES (103, '코하쿠', '/resources/images/character/103.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (107, '틸리아', '/resources/images/character/107.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (108, '카시미라', '/resources/images/character/108.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (111, '아야메', '/resources/images/character/111.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (112, '세이나', '/resources/images/character/112.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (113, '시먀오', '/resources/images/character/113.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (116, '레이센', '/resources/images/character/116.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (117, '징린', '/resources/images/character/117.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (118, '크루니스', '/resources/images/character/118.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (119, '나노하', '/resources/images/character/119.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (120, '카나체', '/resources/images/character/120.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (123, '안즈', '/resources/images/character/123.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (125, '프리지아', '/resources/images/character/125.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (126, '플로라', '/resources/images/character/126.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (127, '테레사', '/resources/images/character/127.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (132, '미네르바', '/resources/images/character/132.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (133, '나츠카', '/resources/images/character/133.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (134, '후유카', '/resources/images/character/134.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (135, '미스티', '/resources/images/character/135.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (141, '치시아', '/resources/images/character/141.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (142, '코제트', '/resources/images/character/142.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (144, '치토세', '/resources/images/character/144.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (147, '캐러멜', '/resources/images/character/147.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (149, '그레이', '/resources/images/character/149.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (150, '라루', '/resources/images/character/150.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (155, '시아', '/resources/images/character/155.png');
INSERT INTO ssh_character (no, name, img_path) VALUES (156, '나즈나', '/resources/images/character/156.png');

COMMIT;

SELECT COUNT(*)
  FROM SSH_POTENTIAL;

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 103, '강해지는 리듬', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 103, '공명의 탄흔', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 103, '과열된 불꽃', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 103, '과열된 불꽃', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 103, '뜨거운 방아쇠', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 103, '뜨거운 춤사위', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 103, '민첩한 캣스텝', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/103/pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 103, '산화의 춤', 'ASSIST', 'PINK', '/resources/images/potential/icons/103/pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 103, '섬세한 강음', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/103/pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 103, '성대한 울림', 'MAIN', 'PINK', '/resources/images/potential/icons/103/pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 103, '압도적인 화력', 'MAIN', 'PINK', '/resources/images/potential/icons/103/pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 103, '압력 증폭', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 103, '약점 조준', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 103, '열공의 불씨', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 103, '열기의 협력', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/103/pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 103, '열정의 리듬', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 103, '열화의 춤사위', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 103, '영혼 추적 불꽃', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 103, '영혼 추적 불꽃', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 103, '웅장한 피날레', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/103/pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 103, '전율의 엔딩곡', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 103, '정밀 온도 제어', 'MAIN', 'PINK', '/resources/images/potential/icons/103/pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 103, '총알 세례', 'MAIN', 'PINK', '/resources/images/potential/icons/103/pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 103, '총열의 잔열', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/103/pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 103, '추적의 춤', 'ASSIST', 'PINK', '/resources/images/potential/icons/103/pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 103, '탄도 강화', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 103, '탐욕의 총화', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 103, '퇴보의 춤', 'ASSIST', 'PINK', '/resources/images/potential/icons/103/pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 103, '피어오르는 불꽃', 'ASSIST', 'GOLD', '/resources/images/potential/icons/103/pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 103, '피어오르는 불꽃', 'MAIN', 'GOLD', '/resources/images/potential/icons/103/pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 103, '확신의 순간', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/103/pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 103, '환염의 춤', 'ASSIST', 'PINK', '/resources/images/potential/icons/103/pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 107, '가드 강화공격', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 107, '가드 강화빛', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 107, '강적 제압', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/107pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 107, '강한 빛으로 인한 실명', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 107, '견고의 신조', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 107, '공수 일체', 'MAIN', 'PINK', '/resources/images/potential/icons/107pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 107, '기사의 맹세성스러운 백악 갑옷', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 107, '기사의 맹세성스러운 백악 갑옷', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 107, '기사의 맹세전의 고양', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 107, '기사의 맹세전의 고양', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 107, '기사의 맹세천공의 붕괴', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 107, '기사의 맹세천공의 붕괴', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 107, '기사의 신성한 표식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 107, '반격 시기', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 107, '반항', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 107, '불굴의 의지', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/107pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 107, '빛나는 깃발', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/107pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 107, '빛의 낙하 반격', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/107pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 107, '빛의 장막', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/107pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 107, '삼위일체', 'MAIN', 'PINK', '/resources/images/potential/icons/107pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 107, '성스러운 빛의 영역', 'MAIN', 'PINK', '/resources/images/potential/icons/107pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 107, '신성 방패의 반격', 'MAIN', 'PINK', '/resources/images/potential/icons/107pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 107, '신성 방패의 축복', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 107, '앙주 심상 결정', 'ASSIST', 'PINK', '/resources/images/potential/icons/107pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 107, '약점 노출', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 107, '완벽한 회전', 'ASSIST', 'PINK', '/resources/images/potential/icons/107pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 107, '이어지는 스펙트럼', 'ASSIST', 'PINK', '/resources/images/potential/icons/107pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 107, '자유분방', 'MAIN', 'GOLD', '/resources/images/potential/icons/107pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 107, '절묘한 릴레이', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/107pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 107, '특수 스킬 에너지 증폭', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 107, '호위의 결심', 'ASSIST', 'GOLD', '/resources/images/potential/icons/107pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 107, '회전의 오의', 'ASSIST', 'PINK', '/resources/images/potential/icons/107pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 108, '강력 폭격', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 108, '결정적 일격', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 108, '과열의 임계점', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/108pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 108, '광역 폭격', 'ASSIST', 'PINK', '/resources/images/potential/icons/108pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 108, '기선제압', 'ASSIST', 'PINK', '/resources/images/potential/icons/108pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 108, '럭키 탄창', 'MAIN', 'PINK', '/resources/images/potential/icons/108pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 108, '럭키 포화', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/108pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 108, '분위기 최고조', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 108, '사격 격투술', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 108, '사격의 타이밍', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 108, '약점 조준', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 108, '에너지 충전 레버', 'MAIN', 'PINK', '/resources/images/potential/icons/108pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 108, '연쇄 반응', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/108pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 108, '완벽한 전투 태세', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 108, '용병의 직감', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 108, '자초한 화염', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/108pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 108, '점진적 열기 강화', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 108, '정밀 폭격', 'ASSIST', 'PINK', '/resources/images/potential/icons/108pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 108, '진격의 나팔', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/108pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 108, '최후의 일격', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 108, '최후의 일격', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 108, '치열한 전투', 'ASSIST', 'PINK', '/resources/images/potential/icons/108pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 108, '타오르는 탄환의 잔열', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/108pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 108, '탄약 과장전', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 108, '특별 선물', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 108, '파군의 일격', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 108, '파군의 일격', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 108, '폭염 인화', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 108, '화염 탄두', 'MAIN', 'PINK', '/resources/images/potential/icons/108pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 108, '화염의 일격', 'ASSIST', 'GOLD', '/resources/images/potential/icons/108pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 108, '화염의 일격', 'MAIN', 'GOLD', '/resources/images/potential/icons/108pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 108, '확산의 방아쇠', 'MAIN', 'PINK', '/resources/images/potential/icons/108pot_32.png');

SELECT COUNT(*)
  FROM SSH_POTENTIAL;
  COMMIT;
  
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 111, '2차 동상', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 111, '강제 청산', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/111pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 111, '겨울의 연속', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 111, '급격한 침수', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 111, '긍정의 신호', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/111pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 111, '난류의 축적', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 111, '낯선 이 접근 금지', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/111pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 111, '눈폭풍의 행진', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 111, '눈폭풍의 행진', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 111, '뜻밖의 이득', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 111, '벡터고정', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 111, '벡터유도', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 111, '벡터추락', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 111, '벡터파열', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 111, '부실 자산', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/111pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 111, '빙결의 가호', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 111, '빙결의 가호', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 111, '빙화의 창', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 111, '빙화의 창', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 111, '상수인력', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 111, '상수중첩', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 111, '상수충격', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 111, '상수확산', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 111, '상황 분석', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/111pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 111, '숙녀 본색', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 111, '액땜', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 111, '일괄 판매', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 111, '정확한 결산', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/111pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 111, '폭풍 눈보라', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 111, '한낮의 추위', 'MAIN', 'GOLD', '/resources/images/potential/icons/111pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 111, '함수 증폭', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 111, '혼란 속의 기회', 'ASSIST', 'GOLD', '/resources/images/potential/icons/111pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 111, '2차 동상', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 111, '강제 청산', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 111, '겨울의 연속', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 111, '급격한 침수', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 111, '긍정의 신호', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 111, '난류의 축적', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 111, '낯선 이 접근 금지', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 111, '눈폭풍의 행진', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 111, '눈폭풍의 행진', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 111, '뜻밖의 이득', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 111, '벡터고정', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 111, '벡터유도', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 111, '벡터추락', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 111, '벡터파열', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 111, '부실 자산', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 111, '빙결의 가호', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 111, '빙결의 가호', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 111, '빙화의 창', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 111, '빙화의 창', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 111, '상수인력', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 111, '상수중첩', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 111, '상수충격', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 111, '상수확산', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 111, '상황 분석', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 111, '숙녀 본색', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 111, '액땜', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 111, '일괄 판매', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 111, '정확한 결산', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 111, '폭풍 눈보라', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 111, '한낮의 추위', 'MAIN', 'PINK', '/resources/images/potential/icons/111pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 111, '함수 증폭', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 111, '혼란 속의 기회', 'ASSIST', 'PINK', '/resources/images/potential/icons/111pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 112, '검기의 위협', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 112, '날 선 회오리', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 112, '떨어지는 석양', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 112, '모래 폭풍', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/112pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 112, '모래의 붕괴', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 112, '무력화의 환류', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 112, '바람의 집결', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 112, '섬개운', 'MAIN', 'PINK', '/resources/images/potential/icons/112pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 112, '섬그림자춤', 'MAIN', 'PINK', '/resources/images/potential/icons/112pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 112, '섬이중주', 'MAIN', 'PINK', '/resources/images/potential/icons/112pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 112, '섬질풍', 'MAIN', 'PINK', '/resources/images/potential/icons/112pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 112, '에너지 환류', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/112pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 112, '역풍의 보호막', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 112, '연무바람', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 112, '열공신인참', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 112, '열공신인참', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 112, '열공연무참', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 112, '열공연무참', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 112, '열공파무참', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 112, '열공파무참', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 112, '용자의 본능', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/112pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 112, '질섬삼연', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/112pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 112, '질주강풍', 'ASSIST', 'PINK', '/resources/images/potential/icons/112pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 112, '질주돌풍', 'ASSIST', 'PINK', '/resources/images/potential/icons/112pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 112, '질주폭풍', 'ASSIST', 'PINK', '/resources/images/potential/icons/112pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 112, '질주풍도', 'ASSIST', 'PINK', '/resources/images/potential/icons/112pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 112, '질풍연무', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/112pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 112, '칼날의 회오리', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 112, '폭풍 회전', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 112, '폭풍의 강탈', 'ASSIST', 'GOLD', '/resources/images/potential/icons/112pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 112, '폭풍의 분열', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/112pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 112, '회오리 베기', 'MAIN', 'GOLD', '/resources/images/potential/icons/112pot_32.png');

SELECT COUNT(*)
  FROM SSH_POTENTIAL;

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 113, '급류 하강', 'MAIN', 'PINK', '/resources/images/potential/icons/113pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 113, '낭독', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 113, '낭독', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 113, '만반의 준비', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 113, '문서 지원', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 113, '비서의 업무', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/113pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 113, '빗물의 파장', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 113, '산골짜기의 물소리', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 113, '산골짜기의 물소리', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 113, '소나기 직후', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/113pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 113, '소방 점검', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 113, '수자원 전문가', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/113pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 113, '순조로운 진행', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 113, '시냇물의 속삭임', 'MAIN', 'PINK', '/resources/images/potential/icons/113pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 113, '우기가랑비', 'ASSIST', 'PINK', '/resources/images/potential/icons/113pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 113, '우기부슬비', 'ASSIST', 'PINK', '/resources/images/potential/icons/113pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 113, '우기비바람', 'ASSIST', 'PINK', '/resources/images/potential/icons/113pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 113, '우기장맛비', 'ASSIST', 'PINK', '/resources/images/potential/icons/113pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 113, '위험 제거', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 113, '은빛 폭포', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 113, '정화의 장대비', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 113, '청류 순환', 'MAIN', 'PINK', '/resources/images/potential/icons/113pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 113, '청류의 그림자', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 113, '침묵의 비', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 113, '파도', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 113, '파도', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 113, '파도의 소용돌이', 'MAIN', 'PINK', '/resources/images/potential/icons/113pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 113, '파란만장', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/113pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 113, '하천의 울림', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/113pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 113, '해일의 폭풍', 'MAIN', 'GOLD', '/resources/images/potential/icons/113pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 113, '현장 분석', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/113pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 113, '효율 증가', 'ASSIST', 'GOLD', '/resources/images/potential/icons/113pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 116, '가시 씨앗', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 116, '가지의 가지', 'MAIN', 'PINK', '/resources/images/potential/icons/116pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 116, '강인한 뿌리와 줄기', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 116, '국면 전환', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 116, '꽃가지 접목', 'ASSIST', 'PINK', '/resources/images/potential/icons/116pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 116, '꽃과 열매', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 116, '꽃과 열매', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 116, '꽃잎의 춤사위', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/116pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 116, '넘치는 생기', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/116pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 116, '단단한 열매', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 116, '두 번째 만개', 'ASSIST', 'PINK', '/resources/images/potential/icons/116pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 116, '무성한 가지', 'MAIN', 'PINK', '/resources/images/potential/icons/116pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 116, '바람에 흔들리는 풀잎', 'ASSIST', 'PINK', '/resources/images/potential/icons/116pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 116, '봄과 가을', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 116, '봄과 가을', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 116, '부식의 속박', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 116, '뿌린 대로 거두기', 'MAIN', 'PINK', '/resources/images/potential/icons/116pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 116, '사방이 적군', 'MAIN', 'PINK', '/resources/images/potential/icons/116pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 116, '슬라이딩 승급', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 116, '쌍둥이 새싹', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/116pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 116, '씨앗의 팽창', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 116, '야성적인 성장', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/116pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 116, '얽혀 있는 뿌리', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 116, '완연한 봄', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 116, '완연한 봄', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 116, '의심의 씨앗', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 116, '잘 익은 열매', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 116, '조급한 성장', 'ASSIST', 'PINK', '/resources/images/potential/icons/116pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 116, '증식하는 가지', 'MAIN', 'GOLD', '/resources/images/potential/icons/116pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 116, '티끌 모아 태산', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/116pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 116, '퍼져나가는 뿌리', 'ASSIST', 'GOLD', '/resources/images/potential/icons/116pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 116, '폭열 열매', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/116pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 117, '가게 점장', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 117, '균형의 회로', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 117, '뇌동만수패', 'ASSIST', 'PINK', '/resources/images/potential/icons/117pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 117, '뇌동삭수패', 'ASSIST', 'PINK', '/resources/images/potential/icons/117pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 117, '뇌동삼원패', 'ASSIST', 'PINK', '/resources/images/potential/icons/117pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 117, '뇌동통수패', 'ASSIST', 'PINK', '/resources/images/potential/icons/117pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 117, '누전 방호', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 117, '멘젠쯔모', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/117pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 117, '방전 테스트', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 117, '백수의 왕', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 117, '백수의 왕', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 117, '사교의 달인', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/117pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 117, '사신수의 가호', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 117, '사신수의 가호', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 117, '삼색동순', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 117, '삼연각', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 117, '식은 죽 먹기', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 117, '에너지 축적 및 결합', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/117pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 117, '에너지 축적부력', 'MAIN', 'PINK', '/resources/images/potential/icons/117pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 117, '에너지 축적연결', 'MAIN', 'PINK', '/resources/images/potential/icons/117pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 117, '에너지 축적연속', 'MAIN', 'PINK', '/resources/images/potential/icons/117pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 117, '에너지 축적인력', 'MAIN', 'PINK', '/resources/images/potential/icons/117pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 117, '열 관리', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 117, '영상개화', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 117, '일기통관', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/117pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 117, '전도체 전환', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/117pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 117, '전력 관리', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 117, '천상의 기린', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 117, '천상의 기린', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 117, '충전 순환', 'MAIN', 'GOLD', '/resources/images/potential/icons/117pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 117, '탕야오', 'ASSIST', 'GOLD', '/resources/images/potential/icons/117pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 117, '회수 및 재활용', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/117pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 118, '광란의 영혼 사냥', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 118, '광란의 영혼 사냥', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 118, '그림자 잠입', 'MAIN', 'PINK', '/resources/images/potential/icons/118pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 118, '독소 침투', 'ASSIST', 'PINK', '/resources/images/potential/icons/118pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 118, '마법 이식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 118, '묘기 수집', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/118pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 118, '불법 의사', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/118pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 118, '비법의 칼날', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/118pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 118, '삼라의 각인', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 118, '삼라의 각인', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 118, '신비의 활성제', 'ASSIST', 'PINK', '/resources/images/potential/icons/118pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 118, '암막의 잔상', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 118, '어둠 낫의 무희', 'MAIN', 'PINK', '/resources/images/potential/icons/118pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 118, '어둠 속 은신', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 118, '어둠 속 질주', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/118pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 118, '어둠의 낫 그림자', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 118, '어둠의 낫 그림자', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 118, '어둠의 폭발', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 118, '영혼 그림자 결박', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 118, '영혼 봉인', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 118, '영혼 컬렉션', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/118pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 118, '영혼의 구속', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 118, '운명의 표식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 118, '유혼의 숨결', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/118pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 118, '의학 연구', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 118, '정밀 수술', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 118, '파골난무', 'ASSIST', 'PINK', '/resources/images/potential/icons/118pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 118, '피의 치유', 'ASSIST', 'GOLD', '/resources/images/potential/icons/118pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 118, '해골 조각', 'ASSIST', 'PINK', '/resources/images/potential/icons/118pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 118, '혼을 찢는 본 쉐도우', 'MAIN', 'PINK', '/resources/images/potential/icons/118pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 118, '환영의 그림자 칼날', 'MAIN', 'PINK', '/resources/images/potential/icons/118pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 118, '흔적 없는 그림자', 'MAIN', 'GOLD', '/resources/images/potential/icons/118pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 119, '결점 보완', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 119, '교대 수호', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/119pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 119, '그림자 바람의 노래', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 119, '그림자 바람의 노래', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 119, '꽃 그림자의 시', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 119, '꽃 그림자의 시', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 119, '꽃무리의 시선', 'ASSIST', 'PINK', '/resources/images/potential/icons/119pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 119, '끝나지 않은 흥', 'ASSIST', 'PINK', '/resources/images/potential/icons/119pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 119, '끝없는 그림자', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 119, '끝없는 그림자', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 119, '따스한 바람의 포옹', 'ASSIST', 'PINK', '/resources/images/potential/icons/119pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 119, '마음을 다한 보살핌', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/119pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 119, '만개하는 화려한 꽃', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 119, '먼 곳에서의 기도', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 119, '무용화산', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 119, '별빛의 질풍', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 119, '부드러운 함정', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 119, '부채꼴 꽃잎', 'MAIN', 'PINK', '/resources/images/potential/icons/119pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 119, '빛을 향한 추격', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 119, '생명의 폭풍', 'MAIN', 'PINK', '/resources/images/potential/icons/119pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 119, '섬세한 재배', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 119, '일심협력', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/119pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 119, '재생의 양분', 'ASSIST', 'PINK', '/resources/images/potential/icons/119pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 119, '정기 손질', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 119, '질풍노도', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/119pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 119, '천공 돌파', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/119pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 119, '특별 보호', 'ASSIST', 'GOLD', '/resources/images/potential/icons/119pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 119, '풍요의 춤사위', 'MAIN', 'PINK', '/resources/images/potential/icons/119pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 119, '화려한 소용돌이', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 119, '환영의 동행', 'MAIN', 'GOLD', '/resources/images/potential/icons/119pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 119, '회전 칼날', 'MAIN', 'PINK', '/resources/images/potential/icons/119pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 119, '흩날리는 꽃잎 폭풍', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/119pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 120, '가속 개념 전수', 'ASSIST', 'PINK', '/resources/images/potential/icons/120pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 120, '결론 정밀 분석', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/120pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 120, '고압 에너지 역류', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 120, '고유의 가르침', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 120, '구조 분석', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 120, '구조 파괴', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 120, '구조 파괴', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 120, '나의 존재', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 120, '난제 공략', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 120, '내면의 생각', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 120, '단일 과목 학습 강화', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 120, '바람의 눈 확장', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 120, '반격 교습', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 120, '변화무쌍', 'MAIN', 'PINK', '/resources/images/potential/icons/120pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 120, '별빛의 가호', 'MAIN', 'PINK', '/resources/images/potential/icons/120pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 120, '선풍 가속', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/120pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 120, '순풍 영역', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 120, '순풍 영역', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 120, '약점 분석', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 120, '에메랄드 쉐도우 스텝', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 120, '우세 영역 활용', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 120, '전 과목 긍정적 평가', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/120pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 120, '정방향 적분', 'MAIN', 'PINK', '/resources/images/potential/icons/120pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 120, '지혜로운 조언자', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/120pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 120, '질적 변화 결론 전수', 'ASSIST', 'PINK', '/resources/images/potential/icons/120pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 120, '추리의 결론', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/120pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 120, '폭풍 제압', 'ASSIST', 'GOLD', '/resources/images/potential/icons/120pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 120, '폭풍 제압', 'MAIN', 'GOLD', '/resources/images/potential/icons/120pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 120, '피어남의 미학 전수', 'ASSIST', 'PINK', '/resources/images/potential/icons/120pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 120, '홀로 빛나는 별', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/120pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 120, '회전 질주', 'MAIN', 'PINK', '/resources/images/potential/icons/120pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 120, '효율적 연구 전수', 'ASSIST', 'PINK', '/resources/images/potential/icons/120pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 123, '가속 강화', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 123, '가속 돌파', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 123, '강풍의 결박', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 123, '견고한 바람 방벽', 'ASSIST', 'PINK', '/resources/images/potential/icons/123pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 123, '눈에 띄는 존재', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/123pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 123, '따스한 바람의 가호', 'ASSIST', 'PINK', '/resources/images/potential/icons/123pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 123, '바람 장벽', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/123pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 123, '바람을 거스르는 기세', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/123pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 123, '바람을 따르는 용기', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/123pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 123, '바람을 타는 소용돌이', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 123, '바람의 경쾌한 발길', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 123, '바람의 길', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 123, '바람의 숨결', 'MAIN', 'PINK', '/resources/images/potential/icons/123pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 123, '보스의 포효', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 123, '보스의 포효', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 123, '부드러운 바람', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 123, '빛의 소용돌이', 'MAIN', 'PINK', '/resources/images/potential/icons/123pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 123, '산맥의 흡입', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 123, '산맥의 흡입', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 123, '순풍의 항해', 'ASSIST', 'PINK', '/resources/images/potential/icons/123pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 123, '숲속 공주의 은총', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/123pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 123, '승리의 맹공', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 123, '에너지 탐식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 123, '에너지 탐식', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 123, '역풍의 억제', 'ASSIST', 'PINK', '/resources/images/potential/icons/123pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 123, '조력의 급류', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 123, '파멸의 질풍', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/123pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 123, '폭풍 격퇴', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 123, '혼란스러운 흐름', 'ASSIST', 'GOLD', '/resources/images/potential/icons/123pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 123, '화려한 등장', 'MAIN', 'PINK', '/resources/images/potential/icons/123pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 123, '흔들리는 풍경종', 'MAIN', 'GOLD', '/resources/images/potential/icons/123pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 123, '흩날리는 돌먼지', 'MAIN', 'PINK', '/resources/images/potential/icons/123pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 125, '구원의 힘', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 125, '극한 망각', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/125pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 125, '멈추지 않는 의지', 'MAIN', 'PINK', '/resources/images/potential/icons/125pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 125, '법의 바다', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/125pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 125, '부분 강설', 'ASSIST', 'PINK', '/resources/images/potential/icons/125pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 125, '빙결 봉인', 'ASSIST', 'PINK', '/resources/images/potential/icons/125pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 125, '뼈 시리는 추위', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/125pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 125, '서리 결계', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 125, '서리의 경고', 'ASSIST', 'PINK', '/resources/images/potential/icons/125pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 125, '서리의 참격', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 125, '서리의 참격', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 125, '수호의 의지', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 125, '승리의 맹공', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/125pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 125, '시간 역행', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/125pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 125, '신속한 심판', 'MAIN', 'PINK', '/resources/images/potential/icons/125pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 125, '신앙의 가호', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 125, '얼음 안개의 장막', 'MAIN', 'PINK', '/resources/images/potential/icons/125pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 125, '얼음의 선물', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 125, '얼음의 소용돌이', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 125, '얼음의 소용돌이', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 125, '영도 폭발', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 125, '영혼 추출', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 125, '원소 승화', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/125pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 125, '절체절명의 역전', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 125, '정면 승부', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 125, '종말의 축복', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 125, '침묵 속의 기도', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 125, '혹한의 깨물기', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 125, '혹한의 예고', 'ASSIST', 'PINK', '/resources/images/potential/icons/125pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 125, '회오리 폭풍', 'MAIN', 'PINK', '/resources/images/potential/icons/125pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 125, '휘몰아치는 한기', 'ASSIST', 'GOLD', '/resources/images/potential/icons/125pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 125, '휘몰아치는 한기', 'MAIN', 'GOLD', '/resources/images/potential/icons/125pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 126, '감정 분출', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 126, '과거잿더미', 'ASSIST', 'PINK', '/resources/images/potential/icons/126pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 126, '군중 효과', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 126, '기쁨의 시가', 'MAIN', 'PINK', '/resources/images/potential/icons/126pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 126, '끝없는 공연', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 126, '나선 스핀', 'MAIN', 'PINK', '/resources/images/potential/icons/126pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 126, '또 다른 자아', 'MAIN', 'PINK', '/resources/images/potential/icons/126pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 126, '리듬 가속', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/126pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 126, '미래희망의 불씨', 'ASSIST', 'PINK', '/resources/images/potential/icons/126pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 126, '배후의 지원', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/126pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 126, '복선 검증', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 126, '불길의 윤회', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 126, '불길의 윤회', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 126, '불씨의 재점화', 'ASSIST', 'PINK', '/resources/images/potential/icons/126pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 126, '숨막히는 불꽃', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 126, '숨막히는 불꽃', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 126, '시각적 충격', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 126, '심연 관찰', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/126pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 126, '엔딩곡', 'MAIN', 'PINK', '/resources/images/potential/icons/126pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 126, '완벽한 연계', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/126pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 126, '위치 조정', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 126, '이스터 에그', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 126, '인상 강화', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/126pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 126, '잿더미 속 불씨', 'ASSIST', 'PINK', '/resources/images/potential/icons/126pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 126, '전장의 지배자', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 126, '주인공 버프', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 126, '즉흥 연기', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 126, '체호프의 총', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/126pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 126, '특별 출연', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 126, '해탈의 깨달음', 'ASSIST', 'GOLD', '/resources/images/potential/icons/126pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 126, '해탈의 깨달음', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 126, '황당한 소동', 'MAIN', 'GOLD', '/resources/images/potential/icons/126pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 127, '가까이 오지마', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 127, '끝없는 분출무한', 'ASSIST', 'PINK', '/resources/images/potential/icons/127pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 127, '끝없는 분출물결', 'ASSIST', 'PINK', '/resources/images/potential/icons/127pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 127, '끝없는 분출불식', 'ASSIST', 'PINK', '/resources/images/potential/icons/127pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 127, '끝없는 분출신속', 'ASSIST', 'PINK', '/resources/images/potential/icons/127pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 127, '끝없는 파도', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 127, '끝없는 파도', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 127, '내가 강화해 줄게', 'ASSIST', 'PINK', '/resources/images/potential/icons/127pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 127, '내가 지켜줄게', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 127, '대단하지', 'ASSIST', 'PINK', '/resources/images/potential/icons/127pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 127, '대체불가한 인연', 'MAIN', 'PINK', '/resources/images/potential/icons/127pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 127, '마검 지배자', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 127, '마검의 에너지 흡수', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 127, '마검의 위압', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 127, '마법 방패 강화', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 127, '마성의 침식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 127, '마성의 침식', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 127, '물결덮치는 물방울', 'MAIN', 'PINK', '/resources/images/potential/icons/127pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 127, '물결진축의 참격', 'MAIN', 'PINK', '/resources/images/potential/icons/127pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 127, '물결폭포의 일격', 'MAIN', 'PINK', '/resources/images/potential/icons/127pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 127, '물결휘감는 구름', 'MAIN', 'PINK', '/resources/images/potential/icons/127pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 127, '반창고 수집가', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 127, '불타는 열정', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/127pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 127, '속성 해방', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 127, '속성 해방', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 127, '수호의 은총', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 127, '이건 어때', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 127, '재개하는 힘', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/127pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 127, '조금만 더 버텨', 'ASSIST', 'GOLD', '/resources/images/potential/icons/127pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 127, '지름길의 행인', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/127pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 127, '차징 일격', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 127, '혼탁한 물결', 'MAIN', 'GOLD', '/resources/images/potential/icons/127pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 132, '4성 수배', 'ASSIST', 'PINK', '/resources/images/potential/icons/132pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 132, '긴급 증원', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 132, '긴급 증원', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 132, '끄트머리 사용법', 'MAIN', 'PINK', '/resources/images/potential/icons/132pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 132, '눈 부신 광휘', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 132, '번쩍이는 별빛', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 132, '번쩍이는 별빛', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 132, '별빛 하늘을 가르며', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/132pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 132, '보이는 게 다가 아냐', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 132, '빛에 그을린 흔적', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/132pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 132, '빛의 연계', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/132pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 132, '삼루타', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 132, '섬광 폭발', 'ASSIST', 'PINK', '/resources/images/potential/icons/132pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 132, '성운의 메아리', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 132, '성핵 폭발', 'ASSIST', 'PINK', '/resources/images/potential/icons/132pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 132, '수호의 별빛', 'ASSIST', 'PINK', '/resources/images/potential/icons/132pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 132, '스트리트 파이트', 'MAIN', 'PINK', '/resources/images/potential/icons/132pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 132, '약점 직격타', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 132, '약점 직격타', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 132, '엄청난 환호', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 132, '연속 공격', 'MAIN', 'PINK', '/resources/images/potential/icons/132pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 132, '완벽한 타격 지점', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 132, '완벽한 포물선', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/132pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 132, '욕망의 봉쇄', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/132pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 132, '윈드 애시 리듬', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/132pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 132, '윈드 애시를 건드렸어', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 132, '전투의 승화', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 132, '짜릿한 손맛', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 132, '최후통첩', 'MAIN', 'PINK', '/resources/images/potential/icons/132pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 132, '클러치 득점', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 132, '홈 어드밴티지', 'MAIN', 'GOLD', '/resources/images/potential/icons/132pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 132, '홈런 상태', 'ASSIST', 'GOLD', '/resources/images/potential/icons/132pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 133, '가벼운 몸놀림', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 133, '강풍의 가호', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 133, '강풍의 화살', 'MAIN', 'PINK', '/resources/images/potential/icons/133pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 133, '광풍의 끝자락', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 133, '꽃 그림자 회오리', 'MAIN', 'PINK', '/resources/images/potential/icons/133pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 133, '꽃의 바다거센 파도', 'ASSIST', 'PINK', '/resources/images/potential/icons/133pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 133, '꽃의 바다결속', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 133, '꽃의 바다침식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 133, '꽃의 바다파도의 물결', 'ASSIST', 'PINK', '/resources/images/potential/icons/133pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 133, '꽃의 바다폭열', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/133pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 133, '나선 회오리', 'MAIN', 'PINK', '/resources/images/potential/icons/133pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 133, '다중 토네이도', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 133, '다중 토네이도', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 133, '바람 신의 가호', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 133, '바람 신의 가호', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 133, '바람 악마의 씨앗', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 133, '바람의 지배자', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 133, '불멸의 바람', 'MAIN', 'PINK', '/resources/images/potential/icons/133pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 133, '자기 업그레이드', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 133, '전능한 지도자', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/133pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 133, '정밀 조작', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/133pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 133, '질풍경초', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/133pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 133, '토네이도 소용돌이', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 133, '토네이도 소용돌이', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 133, '풍식의 주문', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/133pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 133, '풍식의 충격', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 133, '풍운전환', 'MAIN', 'GOLD', '/resources/images/potential/icons/133pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 133, '향기로운 꽃만개', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/133pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 133, '향기로운 꽃빈틈', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 133, '향기로운 꽃소멸', 'ASSIST', 'GOLD', '/resources/images/potential/icons/133pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 133, '향기로운 꽃추격', 'ASSIST', 'PINK', '/resources/images/potential/icons/133pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 133, '향기로운 꽃혼란', 'ASSIST', 'PINK', '/resources/images/potential/icons/133pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 134, '2연타', 'MAIN', 'PINK', '/resources/images/potential/icons/134pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 134, '강력 펀치의 울림', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/134pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 134, '강자의 증명', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 134, '격렬한 돌격', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/134pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 134, '광열의 지원', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 134, '냥냥펀치', 'MAIN', 'PINK', '/resources/images/potential/icons/134pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 134, '다중 사격', 'MAIN', 'PINK', '/resources/images/potential/icons/134pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 134, '다중 충격', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/134pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 134, '동료의 힘', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/134pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 134, '마지막 일격', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/134pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 134, '무외', 'ASSIST', 'PINK', '/resources/images/potential/icons/134pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 134, '바람을 가르는 철권', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 134, '바람을 가르는 철권', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 134, '불꽃의 낙인', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 134, '불타는 마음', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 134, '불타는 마음', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 134, '쇄공', 'ASSIST', 'PINK', '/resources/images/potential/icons/134pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 134, '열섬', 'ASSIST', 'PINK', '/resources/images/potential/icons/134pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 134, '용맹한 도전', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 134, '용자의 의지', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 134, '유성', 'ASSIST', 'PINK', '/resources/images/potential/icons/134pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 134, '재장전', 'MAIN', 'PINK', '/resources/images/potential/icons/134pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 134, '전광석화', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 134, '전심전력', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 134, '철권 차징', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 134, '최고의 상태', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 134, '최고의 상태', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 134, '치명적인 증폭', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 134, '쾌속 연타', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 134, '폭열 추격', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/134pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 134, '회전 반격', 'MAIN', 'GOLD', '/resources/images/potential/icons/134pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 134, '힘의 폭발 준비', 'ASSIST', 'GOLD', '/resources/images/potential/icons/134pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 135, '강력한 어둠의 탐식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 135, '강력한 어둠의 탐식', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 135, '결정적 순간', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 135, '광란의 혼돈', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 135, '광란의 혼돈', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 135, '그림자의 구속', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 135, '긍정의 힘', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 135, '기쁨의 미소', 'ASSIST', 'PINK', '/resources/images/potential/icons/135pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 135, '네거티브 노출 보정', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 135, '드러내는 욕망', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 135, '배후 작업', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 135, '삭제 전의 저항', 'MAIN', 'PINK', '/resources/images/potential/icons/135pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 135, '수면 유혹', 'ASSIST', 'PINK', '/resources/images/potential/icons/135pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 135, '순간 포착', 'MAIN', 'PINK', '/resources/images/potential/icons/135pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 135, '쌍생', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 135, '악의', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/135pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 135, '어둠 속 질주', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 135, '어둠의 빠른 도래', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 135, '어둠의 빠른 도래', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 135, '연속 촬영', 'MAIN', 'PINK', '/resources/images/potential/icons/135pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 135, '원념강력 공격', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 135, '원념악마의 시험', 'MAIN', 'GOLD', '/resources/images/potential/icons/135pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 135, '장노출', 'MAIN', 'PINK', '/resources/images/potential/icons/135pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 135, '저주의 울부짖음', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/135pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 135, '적외선 열화상', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/135pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 135, '증오의 폭발', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/135pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 135, '초혼', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/135pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 135, '추가 복지', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 135, '풀 프레임 자동 초점', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/135pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 135, '행운의 체질', 'ASSIST', 'PINK', '/resources/images/potential/icons/135pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 135, '현실 침식', 'ASSIST', 'PINK', '/resources/images/potential/icons/135pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 135, '흉령', 'ASSIST', 'GOLD', '/resources/images/potential/icons/135pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 141, '거센 불길의 용', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 141, '거센 불길의 용', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 141, '거센 불길의 표식', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 141, '먹에 스며든 불꽃', 'MAIN', 'PINK', '/resources/images/potential/icons/141pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 141, '먹의 색채', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/141pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 141, '무지개 화염진', 'MAIN', 'PINK', '/resources/images/potential/icons/141pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 141, '묵부결계', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 141, '묵부기습', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 141, '묵부매복', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/141pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 141, '묵부뿔피리', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 141, '묵부추적', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/141pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 141, '묵부피의 제물', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 141, '별빛의 불꽃', 'MAIN', 'PINK', '/resources/images/potential/icons/141pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 141, '부적불꽃', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/141pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 141, '부적인호', 'ASSIST', 'PINK', '/resources/images/potential/icons/141pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 141, '불꽃 선풍', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 141, '불꽃 선풍', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 141, '불꽃 연못의 잔재', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/141pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 141, '불꽃의 각성', 'MAIN', 'PINK', '/resources/images/potential/icons/141pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 141, '불꽃의 기원', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 141, '불의 먹점', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/141pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 141, '붉은 용유영', 'ASSIST', 'PINK', '/resources/images/potential/icons/141pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 141, '붉은 용장음', 'ASSIST', 'PINK', '/resources/images/potential/icons/141pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 141, '붓 끝의 연소', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 141, '열독의 각인', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 141, '용호기상', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 141, '인호화염 비늘', 'ASSIST', 'PINK', '/resources/images/potential/icons/141pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 141, '화룡점정', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 141, '화염 공명', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 141, '화염 장막의 잔해', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 141, '화염용의 숨결', 'ASSIST', 'GOLD', '/resources/images/potential/icons/141pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 141, '화염용의 숨결', 'MAIN', 'GOLD', '/resources/images/potential/icons/141pot_32.png');

SELECT COUNT(*)
  FROM SSH_POTENTIAL;

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 142, '각인의 어둠 발톱', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 142, '그림자의 가호', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 142, '그림자의 동행', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 142, '그림자의 섬광', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 142, '그림자의 어둠 발톱', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 142, '불타는 그림자', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 142, '불타는 그림자', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 142, '심연의 흔적', 'ASSIST', 'PINK', '/resources/images/potential/icons/142pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 142, '어두운 잔상', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 142, '어두운 잔상', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 142, '어둠마의 흔적', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 142, '어둠생명', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 142, '어둠신기루', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/142pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 142, '어둠여휘', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 142, '어둠의 그림자 폭풍', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 142, '어둠의 낙인', 'ASSIST', 'PINK', '/resources/images/potential/icons/142pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 142, '어둠의 낙인', 'MAIN', 'PINK', '/resources/images/potential/icons/142pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 142, '어둠의 은총', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/142pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 142, '어둠의 찢기', 'MAIN', 'PINK', '/resources/images/potential/icons/142pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 142, '어둠의 축복', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/142pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 142, '어둠의 침습', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 142, '어둠의 화염', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 142, '어둠의 화염', 'MAIN', 'GOLD', '/resources/images/potential/icons/142pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 142, '어둠의 흔적', 'MAIN', 'PINK', '/resources/images/potential/icons/142pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 142, '어둠형상 파괴', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 142, '어둠환상', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/142pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 142, '영혼의 어둠 발톱', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/142pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 142, '잔영 각인', 'ASSIST', 'PINK', '/resources/images/potential/icons/142pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 142, '잔영 표식', 'ASSIST', 'PINK', '/resources/images/potential/icons/142pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 142, '저승 속의 성흔', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/142pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 142, '저승의 손길', 'MAIN', 'PINK', '/resources/images/potential/icons/142pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 142, '허공의 축복', 'ASSIST', 'GOLD', '/resources/images/potential/icons/142pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 144, '가녀린 춤사위', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 144, '거울 같은 물', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 144, '검의 울음', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/144pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 144, '굳센 보호막', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 144, '그림자 낙하', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 144, '그림자 조류', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 144, '그림자의 칼날', 'MAIN', 'PINK', '/resources/images/potential/icons/144pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 144, '깊은 곳의 숨결', 'ASSIST', 'PINK', '/resources/images/potential/icons/144pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 144, '끝없는 물살', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/144pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 144, '등사 파도', 'MAIN', 'PINK', '/resources/images/potential/icons/144pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 144, '물 검의 소용돌이', 'ASSIST', 'PINK', '/resources/images/potential/icons/144pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 144, '물 정령의 숨겨진 칼날', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/144pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 144, '물결의 몸짓', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 144, '물살의 고리 검', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 144, '물속의 그림자 베기', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 144, '뱀 춤의 물결', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 144, '뱀 춤의 물결', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 144, '부서진 그림자의 침묵', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/144pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 144, '빗방울 검무', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 144, '삭인연참', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 144, '얼어붙은 뱀의 뼈', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 144, '얼어붙은 뱀의 뼈', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 144, '역류하는 여울빛', 'MAIN', 'PINK', '/resources/images/potential/icons/144pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 144, '응고의 독액', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 144, '응고의 독액', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 144, '칼날의 잠행', 'ASSIST', 'PINK', '/resources/images/potential/icons/144pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 144, '파도 뱀', 'MAIN', 'GOLD', '/resources/images/potential/icons/144pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 144, '파도의 물살', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/144pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 144, '파문을 가르는 검', 'ASSIST', 'GOLD', '/resources/images/potential/icons/144pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 144, '하늘 베기', 'MAIN', 'PINK', '/resources/images/potential/icons/144pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 144, '환상 비늘', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/144pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 144, '흩어지는 물결', 'ASSIST', 'PINK', '/resources/images/potential/icons/144pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 147, '가슴 떨리는 전도', 'ASSIST', 'PINK', '/resources/images/potential/icons/147pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 147, '강음 확산', 'MAIN', 'PINK', '/resources/images/potential/icons/147pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 147, '강음의 종결', 'MAIN', 'PINK', '/resources/images/potential/icons/147pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 147, '귓가에 맴도는 선율', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 147, '넘치는 열정', 'ASSIST', 'PINK', '/resources/images/potential/icons/147pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 147, '리듬 펄스', 'MAIN', 'PINK', '/resources/images/potential/icons/147pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 147, '리듬의 울림', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/147pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 147, '멜로디 회귀', 'ASSIST', 'PINK', '/resources/images/potential/icons/147pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 147, '반짝임의 춤', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 147, '변속 연주', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/147pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 147, '볼륨 중첩', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 147, '비상의 현음', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 147, '비상의 현음', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 147, '뾰족한 예각', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 147, '선율의 물결', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 147, '악마의 쇼', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 147, '악마의 쇼', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 147, '악염의 잔해', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 147, '암류 분출', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 147, '암멸의 음격', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 147, '어둠의 무도회', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/147pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 147, '열기의 타이밍', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 147, '영혼 직격타', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 147, '저음의 이끌림', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/147pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 147, '전체 버프', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/147pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 147, '크레센도', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 147, '타락 2중주', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/147pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 147, '타락의 장막', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 147, '타락의 장막', 'MAIN', 'GOLD', '/resources/images/potential/icons/147pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 147, '하늘의 진동', 'ASSIST', 'PINK', '/resources/images/potential/icons/147pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 147, '하우스 공명', 'ASSIST', 'GOLD', '/resources/images/potential/icons/147pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 147, '환호의 섬광', 'MAIN', 'PINK', '/resources/images/potential/icons/147pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 149, '가중처벌', 'ASSIST', 'PINK', '/resources/images/potential/icons/149pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 149, '가학적 즐거움', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 149, '고통 증식', 'MAIN', 'PINK', '/resources/images/potential/icons/149pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 149, '공감', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/149pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 149, '관통의 고통', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/149pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 149, '끝없는 고통', 'MAIN', 'PINK', '/resources/images/potential/icons/149pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 149, '멀티 플레이', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 149, '사면자의 비전 선언', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 149, '사면자의 비전 선언', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 149, '사적 제재', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 149, '산사태 폭풍', 'MAIN', 'PINK', '/resources/images/potential/icons/149pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 149, '아쉬운 마음', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/149pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 149, '악의적 공격', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 149, '안전장치 없음', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 149, '여섯 재앙굶주림', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/149pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 149, '여섯 재앙사망', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 149, '여섯 재앙순교', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/149pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 149, '여섯 재앙정복', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 149, '여섯 재앙죽음의 한', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 149, '여섯 재앙침식', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 149, '연익자의 종결 선언', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 149, '연익자의 종결 선언', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 149, '영혼 실의 공명', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/149pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 149, '윤회자의 심판 선언', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 149, '윤회자의 심판 선언', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 149, '죄의 공진', 'ASSIST', 'PINK', '/resources/images/potential/icons/149pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 149, '진동하는 대지', 'ASSIST', 'PINK', '/resources/images/potential/icons/149pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 149, '추격 사냥', 'MAIN', 'GOLD', '/resources/images/potential/icons/149pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 149, '통제 불가 폭주', 'MAIN', 'PINK', '/resources/images/potential/icons/149pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 149, '황혼의 단죄', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 149, '황혼의 사냥', 'ASSIST', 'GOLD', '/resources/images/potential/icons/149pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 149, '훌륭한 마무리', 'ASSIST', 'PINK', '/resources/images/potential/icons/149pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 150, '광염번쩍임', 'ASSIST', 'PINK', '/resources/images/potential/icons/150pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 150, '광염연속', 'ASSIST', 'PINK', '/resources/images/potential/icons/150pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 150, '광염응축', 'ASSIST', 'PINK', '/resources/images/potential/icons/150pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 150, '광염추격', 'ASSIST', 'PINK', '/resources/images/potential/icons/150pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 150, '그림자 비행', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 150, '낙창광역', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 150, '낙창광역', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 150, '낙창번개 파도', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 150, '낙창번개 파도', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 150, '낙창전기 속박', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 150, '낙창전기 속박', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 150, '번개 영역 부유', 'MAIN', 'PINK', '/resources/images/potential/icons/150pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 150, '번개창무', 'MAIN', 'PINK', '/resources/images/potential/icons/150pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 150, '빛의 빗방울', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/150pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 150, '빛의 장벽 폭풍', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 150, '성스러운 말의 기도', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/150pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 150, '성스러운 빛의 각인', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 150, '성스러운 빛의 세례', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 150, '성스러운 창의 심판', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 150, '송곳', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 150, '순간의 습격', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/150pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 150, '열공', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/150pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 150, '장총 소탕', 'MAIN', 'PINK', '/resources/images/potential/icons/150pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 150, '전격 사슬', 'MAIN', 'PINK', '/resources/images/potential/icons/150pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 150, '전기 사슬', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/150pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 150, '찰나의 빛', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 150, '총소리', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 150, '파광', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 150, '포획', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 150, '하늘을 비추는 여명', 'ASSIST', 'GOLD', '/resources/images/potential/icons/150pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 150, '하늘을 찢는 기습', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/150pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 150, '현란한 번개', 'MAIN', 'GOLD', '/resources/images/potential/icons/150pot_32.png');

INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 155, '고요함 속 물결', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 155, '고요함 속 물결', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 155, '공허의 파도', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 155, '공허의 파도', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 155, '눈의 리듬', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 155, '달그림자 콤보', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 155, '달빛 폭발', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/155pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 155, '달빛의 분출', 'MAIN', 'PINK', '/resources/images/potential/icons/155pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 155, '달의 장막 강림', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/155pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 155, '물결 자르기', 'ASSIST', 'PINK', '/resources/images/potential/icons/155pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 155, '별빛의 도약', 'MAIN', 'PINK', '/resources/images/potential/icons/155pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 155, '보드의 물결 가르기', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 155, '설경 돌파', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 155, '설원의 제압', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/155pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 155, '쌍월의 회전', 'ASSIST', 'PINK', '/resources/images/potential/icons/155pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 155, '월광을 향한 외침', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 155, '월광을 향한 외침', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 155, '월식 폭발', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 155, '조석 에너지 충전', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 155, '초승달 영혼 자르기', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 155, '칼날 같은 눈', 'MAIN', 'PINK', '/resources/images/potential/icons/155pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 155, '토끼 파도 분사', 'ASSIST', 'PINK', '/resources/images/potential/icons/155pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 155, '토끼의 그림자 질주', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/155pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 155, '토끼의 도약 추적', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 155, '토끼의 동행', 'ASSIST', 'PINK', '/resources/images/potential/icons/155pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 155, '토끼의 집중하는 빛', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 155, '파도 밟기', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 155, '파도 속 가속', 'ASSIST', 'GOLD', '/resources/images/potential/icons/155pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 155, '파도의 춤사위', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/155pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 155, '파도의 표류', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/155pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 155, '환상의 발걸음', 'MAIN', 'PINK', '/resources/images/potential/icons/155pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 155, '흰 눈의 폭발', 'MAIN', 'GOLD', '/resources/images/potential/icons/155pot_32.png');

SELECT COUNT(*)
  FROM SSH_POTENTIAL;
  
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (1, 156, '개구쟁이 총집합', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_1.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (2, 156, '개구쟁이 총집합', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_2.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (3, 156, '기발한 장난', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_3.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (4, 156, '기쁨의 스핀', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/156pot_4.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (5, 156, '깃털의 난무', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_5.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (6, 156, '러브 애로우', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/156pot_6.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (7, 156, '리듬의 달인', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_7.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (8, 156, '무한한 스윙', 'ASSIST', 'PINK', '/resources/images/potential/icons/156pot_8.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (9, 156, '미약한 세력', 'MAIN', 'PINK', '/resources/images/potential/icons/156pot_9.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (10, 156, '보너스 풀', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_10.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (11, 156, '빈틈 채우기', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_11.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (12, 156, '사랑스러운 응원', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_12.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (13, 156, '사랑의 관통', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_13.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (14, 156, '살랑이는 스텝', 'MAIN', 'PINK', '/resources/images/potential/icons/156pot_14.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (15, 156, '서프라이즈 포옹', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/156pot_15.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (16, 156, '스텝 기술', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_16.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (17, 156, '연속 서프라이즈', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_17.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (18, 156, '원샷 올킬', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/156pot_18.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (19, 156, '자연의 손길', 'MAIN', 'RAINBOW', '/resources/images/potential/icons/156pot_19.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (20, 156, '정의로운 기세', 'ASSIST', 'PINK', '/resources/images/potential/icons/156pot_20.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (21, 156, '큐티 스타볼', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_21.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (22, 156, '터보 카트', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_22.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (23, 156, '터보 카트', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_23.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (24, 156, '특별한 러브샷', 'ASSIST', 'PINK', '/resources/images/potential/icons/156pot_24.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (25, 156, '풍선 토네이도', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_25.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (26, 156, '풍선 토네이도', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_26.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (27, 156, '피어나는 달콤함', 'ASSIST', 'PINK', '/resources/images/potential/icons/156pot_27.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (28, 156, '하늘에서 떨어진 행운', 'ASSIST', 'RAINBOW', '/resources/images/potential/icons/156pot_28.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (29, 156, '행운 추첨', 'MAIN', 'PINK', '/resources/images/potential/icons/156pot_29.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (30, 156, '허니 애로우', 'ASSIST', 'GOLD', '/resources/images/potential/icons/156pot_30.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (31, 156, '협력 화력', 'MAIN', 'GOLD', '/resources/images/potential/icons/156pot_31.png');
INSERT INTO ssh_potential (no, char_no, name, type, rank, img_path) VALUES (32, 156, '화려한 턴', 'MAIN', 'PINK', '/resources/images/potential/icons/156pot_32.png');

SELECT COUNT(*)
  FROM SSH_POTENTIAL;
COMMIT;
SELECT COUNT(DISTINCT RANK)
  FROM SSH_POTENTIAL;
  
SELECT *
  FROM SSH_POTENTIAL;
  
select distinct char_no
  from ssh_potential;