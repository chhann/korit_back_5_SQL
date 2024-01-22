select
	at.num,
    at.author_name
from 
		(select 
			row_number() over(order by author_id desc) as num,
            author_id,
            author_name
		from 
			author_tb 
		where
			author_name like '글%' ) at
where 
	at.num > 10;


# 서브쿼리는 select에다 쓰면 안된다 
# 왜냐하면 select 출력할떄 하나하나마다 서브 select가 일어나기 때문에
select
	*,
    (select
		count(*) 
	from
		publisher_tb) total_count
from
	publisher_tb;


#select가 두번만 일어나고 join 으로 비교 끝
# 
select
	*
from
	publisher_tb pt
    left outer join(select 
						count(*) 
					from 
						publisher_tb) pt2 on (1=1);



#select로 거르고
#붙인다 
select
	*
from
	book_tb
where
	publisher_id in (select
						publisher_id
					from
						publisher_tb
					where
						publisher_name like '아%'
);


# 아마 위에보다 빠름 근데 데이터 많아지면 비슷비슷함
# join으로 ex100개 면 1만번 비교해서 붙이고
# select
select
	*
from
	book_tb bt
    left outer join publisher_tb pt on(pt.publisher_id = bt.publisher_id)
where
	pt.publisher_name like '아%';



# 속도차이 알아보기
select @@profiling;
show profiles;
set profiling = 1;





