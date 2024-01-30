create view book_view as
select
	bt.book_id,
     bt.book_name,
     bt.author_id,
     at.author_name,
     bt.publisher_id,
     pt.publisher_name
from
	book_tb bt
    left outer join author_tb at on (at.author_id = bt.author_id)
    left outer join publisher_tb pt on (pt.publisher_id = bt.publisher_id);

    
select
	*
from
	book_view;

    
    
select
	*
from
	book_view
where
	? = 1
    or book_name like ?
    or author_name like ?

-- 파라미터가 하나라도 들어가있으면 0
-- 파라미터가 없으면 1

