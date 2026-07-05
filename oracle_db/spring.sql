-- user: spring
-- pw: 1234

drop table tbl_notice_file;
drop table tbl_notice;
drop table tbl_member;

drop sequence seq_notice;
drop sequence seq_notice_file;

create table tbl_member
(
    member_id varchar2(10) primary key,
    member_pw varchar2(30) not null,
    member_name varchar2(30) not null,
    member_phone char(13) not null,
    member_age number,
    member_gender char(1) check(member_gender in ('M', 'W')) not null,
    enroll_date date not null
);

insert into tbl_member values ('admin' , '1234', '관리자', '010-0000-0000', 25, 'M', sysdate);
insert into tbl_member values ('mason' , '1234', '매이슨', '010-1111-1111', 24, 'W', sysdate);
insert into tbl_member values ('woods' , '1234', '우즈'  , '010-2222-2222', 31, 'W', sysdate);
insert into tbl_member values ('bowman', '1234', '보우맨', '010-3333-3333', 28, 'W', sysdate);
insert into tbl_member values ('hudson', '1234', '허드슨', '010-4444-4444', 42, 'M', sysdate);
insert into tbl_member values ('john'  , '1234', '존'    , '010-5555-5555', 35, 'M', sysdate);

create table tbl_notice (
    notice_no number primary key,
    notice_title varchar2(200) not null,
    notice_content varchar2(2000) not null,
    notice_writer varchar2(30) references tbl_member(member_id) on delete cascade,
    notice_date date not null
);

create sequence seq_notice;

create table tbl_notice_file (
    file_no number primary key,
    notice_no number references tbl_notice(notice_no) on delete cascade,
    file_name varchar2(100) not null,
    file_path varchar2(100) not null
);

create sequence seq_notice_file;

insert into tbl_notice values (seq_notice.nextval, '제목0', '내용0', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목1', '내용1', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목2', '내용2', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목3', '내용3', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목4', '내용4', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목5', '내용5', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목6', '내용6', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목7', '내용7', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목8', '내용8', 'admin', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목9', '내용9', 'admin', sysdate);

insert into tbl_notice values (seq_notice.nextval, '제목0', '내용0', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목1', '내용1', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목2', '내용2', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목3', '내용3', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목4', '내용4', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목5', '내용5', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목6', '내용6', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목7', '내용7', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목8', '내용8', 'mason', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목9', '내용9', 'mason', sysdate);

insert into tbl_notice values (seq_notice.nextval, '제목0', '내용0', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목1', '내용1', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목2', '내용2', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목3', '내용3', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목4', '내용4', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목5', '내용5', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목6', '내용6', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목7', '내용7', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목8', '내용8', 'woods', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목9', '내용9', 'woods', sysdate);

insert into tbl_notice values (seq_notice.nextval, '제목0', '내용0', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목1', '내용1', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목2', '내용2', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목3', '내용3', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목4', '내용4', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목5', '내용5', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목6', '내용6', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목7', '내용7', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목8', '내용8', 'bowman', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목9', '내용9', 'bowman', sysdate);

insert into tbl_notice values (seq_notice.nextval, '제목0', '내용0', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목1', '내용1', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목2', '내용2', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목3', '내용3', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목4', '내용4', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목5', '내용5', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목6', '내용6', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목7', '내용7', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목8', '내용8', 'hudson', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목9', '내용9', 'hudson', sysdate);

insert into tbl_notice values (seq_notice.nextval, '제목0', '내용0', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목1', '내용1', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목2', '내용2', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목3', '내용3', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목4', '내용4', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목5', '내용5', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목6', '내용6', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목7', '내용7', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목8', '내용8', 'john', sysdate);
insert into tbl_notice values (seq_notice.nextval, '제목9', '내용9', 'john', sysdate);

select * from tbl_member;
select * from tbl_notice;
select * from tbl_notice_file;

select * from 
(
select rownum rnum, a.* 
    from 
    (
    select a.*
        from tbl_notice a
        order by notice_no desc
    ) a
) a
where rnum between 1 and 10;

select * from TBL_NOTICE_FILE;

commit;
