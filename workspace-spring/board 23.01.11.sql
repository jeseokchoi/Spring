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

desc member5;
desc board;
select * from member5 order by idx;
select * from board;
commit;


insert into board values(board_seq.nextval, 'dummy2', '테스트입니다12121', '테스트트트트트트트트', sysdate);

insert into board values(board_seq.nextval, 'BDNS', '테스트입니다2', '테스트트트트트트트트2', sysdate);