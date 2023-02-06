-- ±íÀÌ °³³äÀÌ ¾ø´Â ´Ü¼ø ´ñ±Û

drop table reply1;
drop sequence reply1_seq;

create sequence reply1_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocache
    nocycle;
    
create table reply1 (
    idx             number              default reply1_seq.nextval  primary key,
    board_idx       number              ,
    writer          varchar2(100)       ,
    content         varchar2(4000)      not null,
    writeDate       date                default sysdate,
    
    constraint reply1_board2
    foreign key(board_idx)
    references board2(idx)
    on delete set null,
    
    constraint reply1_member5
    foreign key(writer)
    references member5(userid)
    on delete set null
);

insert into reply1 values (
    reply1_seq.nextval, 1162, 'dodoro914', '´ñ±Û1', sysdate
);
insert into reply1 values (
    reply1_seq.nextval, 1162, 'test3', '´ñ±Û2', sysdate
);
insert into reply1 values (
    reply1_seq.nextval, 1162, 'test1', '´ñ±Û3', sysdate
);
insert into reply1 values (
    reply1_seq.nextval, 1162, 'test2', '´ñ±Û4', sysdate
);
commit;
select * from reply1;
select * from reply1 where board_idx=1162;
select * from board2;
select * from member5;
desc reply1;
desc board2;