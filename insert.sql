use `db_study`; #데이터 베이스 선택
-- 컴포지드 프라이머리키 : 프라이머리 키가 두개가 있으면 두개를 합쳐 하나의 프라이머리 키로 읽는다

insert into student_tb(student_id, name, age, address) values (0, '이정찬', 29, '부산 부산진구');
insert into student_tb(address, name, age, student_id) values ('부산 부산진구', '이정친', 29, 1);
insert into student_tb(name, address) values ('이정친', null);
insert into student_tb values (0, '이정친', null, null);

insert into student_tb values (0, '이정c', null, null), (0, '이정d', null, null);

insert into 
	student_tb 
	(student_id, name, age, address)
values
	(0, '이정c', null, null), 
	(0, '이정d', null, null);
    

    



