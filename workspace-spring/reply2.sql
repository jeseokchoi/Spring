-- °èÃþÇü ´ñ±Û
-- ctrl + R (¸ðµÎÃ£¾Æ ¹Ù²Ù±â ´ÜÃà±â)

drop table reply2;
drop sequence reply2_seq;

create sequence reply2_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocache
    nocycle;
    
create table reply2 (
    idx             number              default reply2_seq.nextval  primary key,
    board_idx       number              ,
    -- °èÃþÇü ´ñ±ÛÀ» À§ÇÑ Ãß°¡ ÄÃ·³
    parent_idx      number              default 0,  -- ºÎ¸ð ´ñ±Û idx
    reply_depth     number              default 0,  -- ´ñ±ÛÀÇ ±íÀÌ(½Ã°¢Àû µé¿©¾²±â ¿ä¼Ò)
    
    writer          varchar2(100)       ,
    content         varchar2(4000)      not null,
    writeDate       date                default sysdate,
    
    constraint reply2_board2
    foreign key(board_idx)
    references board2(idx)
    on delete set null,
    
    constraint reply2_member5
    foreign key(writer)
    references member5(userid)
    on delete set null
);

insert into reply2 values (reply2_seq.nextval, 1164, 0, 0, 'dodoro914', '´ñ±Û1', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 0, 0, 'dodoro914', '´ñ±Û2', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 0, 0, 'dodoro914', '´ñ±Û3', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 1, 1, 'dodoro914', '´ñ±Û1-1', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 2, 1, 'dodoro914', '´ñ±Û2-1', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 3, 1, 'dodoro914', '´ñ±Û3-1', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 4, 2, 'dodoro914', '´ñ±Û4-1-1', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 4, 3, 'dodoro914', '´ñ±Û4-2-1', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 4, 4, 'dodoro914', '´ñ±Û4-3-1', sysdate);
insert into reply2 values (reply2_seq.nextval, 1164, 4, 5, 'dodoro914', '´ñ±Û4-4-1', sysdate);

commit;

select * from 
    (select * from reply2 where board_idx = 1164)
                            start with parent_idx = 0
                             connect by prior idx = parent_idx;

select * from member5;

                             
                             
                             
                             
                             