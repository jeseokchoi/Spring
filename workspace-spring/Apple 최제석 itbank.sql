create sequence apple_seq
    start with 1
    maxvalue 999999
    increment by 1
    nocache
    nocycle;
    
create table apple (
    idx             number          default APPLE_SEQ.nextval primary key,
    product         varchar2(300)   unique not null,
    price           number          check (price between 0 and 1000000000),
    category        varchar2(100)   not null,
    manufactureDate date            default sysdate,
    pdInformation   varchar2(3000)  
);

select * from apple;
commit;
desc apple;


insert into apple 
    values( 
    apple_seq.nextval, 
    'AirPods Pro(2����)', 
    359000, 
    'AirPods',
    sysdate,
    '��´ٴ� ���� �ٽ� �����ϴ�, Ź���� ����� ǰ��, �ִ� 2�� �� ���� ������ ĵ����, ���� ������ û�� ����, �þ ���͸� ��� �ð�, ���Ӱ� �����ε� ���� ���̽�, �� ��� ������ �ű�Ӵ�'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'AirPods(3����)',
    269000,
    'AirPods',
    sysdate,
    '�ֽ� ������, ���� �Ӹ� ���� ����� �����Ǵ� ���� ������ ���� ����, ������ EQ, �� �� ���͸� ��� �ð�, ���� ���⿡ ���� ��Ȱ ��� ������, ��� �鿡�� ��Ȥ��'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'AirPods(2����)',
    199000,
    'AirPods',
    sysdate,
    '�� ��� ������ �ű�Ӵ�.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPhone 14 Pro',
    1550000,
    'iPhone',
    sysdate,
    '���� �� �̻�.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPhone 14',
    1250000,
    'iPhone',
    sysdate,
    'iPhone 14�� iPhone 13 Pro�� ž��� �Ͱ� ������ �ʰ�� Ĩ�� ���߾����ϴ�.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPad Pro 12.9',
    1729000,
    'iPad',
    sysdate,
    'iPad Pro ������ ������ M2 Ĩ ž��'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPad(10����)',
    679000,
    'iPad',
    sysdate,
    '�پ��� �ϻ� �۾��� �´� ������ ���Ӱ�, �÷�Ǯ�� iPad.'
    );

insert into apple
    values(
    apple_seq.nextval,
    'iPad Air',
    929000,
    'iPad',
    sysdate,
    '�����ߴ� ���� ����, �������� ���ߴ� �ͱ���.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'MacBook Air(M1)',
    1390000,
    'Mac',
    sysdate,
    'MacBook Air, Air�� �帧�� �ٲٴ�.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'MacBook Pro 13',
    1790000,
    'Mac',
    sysdate,
    'MacBook Pro, ��ħ���� ����.'
    );
    
    
    
    


