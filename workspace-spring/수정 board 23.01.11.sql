create sequence board_seq
    start with 1
    maxvalue 99999999999
    increment by 1
    nocache
    nocycle;
    
create table board (
    idx         number              default board_seq.nextval primary key,
    writer      varchar2(100)       not null,
    title       varchar2(200)       not null,
    content     varchar2(2000)      not null,
    views        number              not null,
    registDate  date                default sysdate,
    
    constraint fk_board_member5
    foreign key(writer)
    references member5(userId)
    on delete cascade
);

drop table board;
drop SEQUENCE board_seq;
desc member5;
desc board;
select * from member5 order by idx;
select * from board;
select count(*) from board;

select * from (
	select rownum as st, A.* from ( 
		select * from board order by idx desc
	) A where rownum <= 30
) where st >= 21;
================================================================================

select * from board
	order by idx desc
	offset 20 rows
	fetch first 10 rows only;

select * from board
    where title like '%톰캣%'
	order by idx desc
	offset 0 rows
	fetch first 10 rows only;

delete board where idx > 216;
commit;


insert into board values(board_seq.nextval, 'dummy2', '테스트입니다12121', '테스트트트트트트트트', sysdate);

insert into board values(board_seq.nextval, 'BDNS', '테스트입니다2', '테스트트트트트트트트2', sysdate);

insert into board (writer, title, content, views) 
    select writer, title, content, views from board;