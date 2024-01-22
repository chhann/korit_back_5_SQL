
call p_sum(10, 20, @result);

select
	@result;
    
set @count = 0;
set @restlt = 1;

call p_sum(10, 20, @result, @count);

select
	@result;
    
select
	@count;