create sequence homeplus_seq
	start with 1000
	maxvalue 99999
	increment by 1
	nocycle
	nocache;
    
create table homeplus(
    idx             number          default homeplus_seq.nextval primary key,
    category        varchar2(100)   not null,
    productName     varchar2(200)   unique not null,
    price           number          check(price between 0 and 500000),
    score           number(4, 1)    check(score between 0 and 5),
    thumbnail       varchar2(255)   ,
    reviewImage     varchar2(255)   ,
    registDate      date            default sysdate
);

select * from homeplus order by idx;
commit;
desc homeplus;

insert into homeplus 
    values(homeplus_seq.nextval, 
    '���', 
    '���� ǳ�� ��� 4-6��(��)', 
    9990, 
    4.5, 
    '2023-01-04_���� ǳ�� ��� 4-6��(��)_thumbnail.jfif',
    '2023-01-04_���� ǳ�� ��� 4-6��(��)_review.jpg',
    sysdate
    );
    
insert into homeplus 
    values(homeplus_seq.nextval, 
    '���', 
    '���� �ҽ� ��� 2KG(��)', 
    19990, 
    4.5, 
    '2023-01-04_���� �ҽ� ��� 2KG(��)_thumbnail.jfif',
    '2023-01-04_���� �ҽ� ��� 2KG(��)_review.jpg',
    sysdate
    );
    
    
    
    
    
    
    