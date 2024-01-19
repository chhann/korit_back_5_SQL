update product_color_tb
set product_color_name = 'Green'
where
	product_color_name = 'Navy';
    
update product_color_tb
set 
	product_color_name_kor = case 
		when product_color_name = 'Black' then '블랙랙'
		when product_color_name = 'white' then '화이트트'
		when product_color_name = 'Green' then '그린린
        '
    end;
