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
    values('���� ���� �λ��� �ٽ� ��ٸ�(10�� �� ��� ����� �����)', '���ϳ����λ����ٽû�ٸ�(10���α�佺��ȿ����)', '������', '���̺�', '2022-11-11', 15480, '���� ������ �� ��ſ��� �� �ְ� ���� ���� 42', 9.7);

insert into book3(name, name2, author, publisher, publishDate, price, memo, score)
    values('Ʈ���� �ڸ��� 2023', 'Ʈ�����ڸ���2023', '�賭��', '�̷��� â', '2022-10-05', 17100, '����� �Һ�Ʈ���� �м������� 2023 ����', 9.4);

insert into book3(name, author, publisher, publishDate, price, memo, score) values('������ ������(40���� ��� ���� �����)', '��ȣ��', '����������', '2021-04-20', 12600, '��ȣ�� ����Ҽ�', 9.8);
    
select * from book3 where name like('%Ʈ����%'); 

