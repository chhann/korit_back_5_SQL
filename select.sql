select * from student_tb;
# *의 의미는 전체 컬럼

-- from -> where -> select
select 
	student_id, 
    name,
    age
from 
	student_tb 
where 
	not name = '이정찬'
    or name = '이정e';
    
select
    *
from 
	student_tb
where
	name in ('이정찬', '이정e');
    
select
	*
from
	student_tb
where
	student_id in (1,2,3);
    
truncate table student_tb;

/*
	10명의 학생 정보 추가
    
    김도균 27 부산 금정구
    김도훈 25 부산 부산진구
    김범수 33 부산 금정구
    김상현 26 부산 남구
    이재영 26 부산 서구
    이정찬 29 부산 부산진구
    이지언 26 부산 동래구
    이편원 30 경상남도 양산
    전주환 30 부산 부산진구
    심재원 29 부산 남구
*/

insert into
	student_tb 
    (student_id, name, age, address)
values
	(0, '김도균', 27, '부산 금정구'), 
	(0, '김도훈', 25, '부산 부산진구'), 
	(0, '김범수', 33, '부산 금정구'), 
	(0, '김상현', 26, '부산 남구'), 
	(0, '이재영', 26, '부산 서구'), 
	(0, '이정찬', 29, '부산 부산진구'), 
	(0, '이지언', 26, '부산 동래구'), 
	(0, '이평원', 30, '경상남도 양산'), 
	(0, '전주환', 30, '부산 부산진구'), 
	(0, '심재원', 29, '부산 남구');
    
select 
	* 
from 
	student_tb;
    
# between 은 이상, 이하 에서 쓰인다    
select
	* 
from 
	student_tb
where
	age between 20 and 29;

#
select
	* 
from 
	student_tb
where
	age >= 30
    and age <= 39;
    
select
	*
from 
	student_tb
where
	name like '%도%'
    or name like '%원';
    
# 집계(그룹화)
-- count(*) 필드 갯수가 몇개? 
-- from -> where - > group by -> having -> select -> order by
select
	address,
	count(*) as address_count
from 
	student_tb
group by
	name,
	address
    # 이름과 어드레스가 같아야 묶인다 !!
-- having
-- 	count(*) >= 2
order by
	address_count desc, -- 숫자 내림차순
    address desc;		-- 글자 내림차순
    

