insert into user_mst_tb
values
	(0, 'gd', '111222');
    
select
	*
from
	user_mst_tb;
    
select
	*
from
	user_dtl_tb;
    
delete
from
	user_mst_tb
where 
	username = 'gd';
    
select
	*
from
	user_dtl_tb;