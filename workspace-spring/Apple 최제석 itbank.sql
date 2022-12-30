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
    'AirPods Pro(2세대)', 
    359000, 
    'AirPods',
    sysdate,
    '듣는다는 것을 다시 생각하다, 탁월한 오디오 품질, 최대 2배 더 향상된 노이즈 캔슬링, 개인 맞춤형 청취 경험, 늘어난 배터리 사용 시간, 새롭게 디자인된 충전 케이스, 그 어느 때보다 신기롭다'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'AirPods(3세대)',
    269000,
    'AirPods',
    sysdate,
    '최신 디자인, 동적 머리 추적 기술로 구현되는 개인 맞춤형 공간 음향, 적응형 EQ, 더 긴 배터리 사용 시간, 땀과 습기에 강한 생활 방수 디자인, 모든 면에서 매혹적'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'AirPods(2세대)',
    199000,
    'AirPods',
    sysdate,
    '그 어느 때보다 신기롭다.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPhone 14 Pro',
    1550000,
    'iPhone',
    sysdate,
    '프로 그 이상.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPhone 14',
    1250000,
    'iPhone',
    sysdate,
    'iPhone 14은 iPhone 13 Pro에 탑재된 것과 동일한 초고속 칩을 갖추었습니다.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPad Pro 12.9',
    1729000,
    'iPad',
    sysdate,
    'iPad Pro 막강한 성능의 M2 칩 탑재'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'iPad(10세대)',
    679000,
    'iPad',
    sysdate,
    '다양한 일상 작업에 맞는 완전히 새롭고, 컬러풀한 iPad.'
    );

insert into apple
    values(
    apple_seq.nextval,
    'iPad Air',
    929000,
    'iPad',
    sysdate,
    '생각했던 것은 물론, 생각지도 못했던 것까지.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'MacBook Air(M1)',
    1390000,
    'Mac',
    sysdate,
    'MacBook Air, Air의 흐름을 바꾸다.'
    );
    
insert into apple
    values(
    apple_seq.nextval,
    'MacBook Pro 13',
    1790000,
    'Mac',
    sysdate,
    'MacBook Pro, 거침없이 프로.'
    );
    
    
    
    


