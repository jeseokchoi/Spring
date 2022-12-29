create sequence book3_seq
    start with 1
    maxvalue 99999999999
    increment by 1
    nocache
    nocycle;
    
create table book3 (
    idx			number			default book3_seq.nextval primary key,
    name		varchar2(100)	not null,
    name2       varchar2(100)   not null,
    author		varchar2(100)	not null,
    publisher	varchar2(100)	not null,
    publishDate	date			not null,
    price		number			check (price between 0 and 500000),
    memo		varchar2(2000)	not null,
    score		number(4, 1)	check (score between 0 and 10)
);

select * from book3 where price between 13000 and 16000;

select * from book3 order by idx;
commit;
desc book3;
delete from book3 where idx=;
drop table book3;

insert into book3(name, name2, author, publisher, publishDate, price, memo, score)
    values('만일 내가 인생을 다시 산다면(10만 부 기념 스페셜 에디션)', '만일내가인생을다시산다면(10만부기념스페셜에디션)', '김혜남', '메이븐', '2022-11-11', 15480, '벌써 마흔이 된 당신에게 해 주고 싶은 말들 42', 9.7);

insert into book3(name, name2, author, publisher, publishDate, price, memo, score)
    values('트렌드 코리아 2023', '트렌드코리아2023', '김난도', '미래의 창', '2022-10-05', 17100, '서울대 소비트렌드 분석센터의 2023 전망', 9.4);

insert into book3(name, author, publisher, publishDate, price, memo, score) values('불편한 편의점(40만부 기념 벚꽃 에디션)', '김호연', '나무옆의자', '2021-04-20', 12600, '김호연 장편소설', 9.8);
    
select * from book3 where name like('%트렌드%'); 

