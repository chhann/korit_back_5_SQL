insert into student_adrres_sido
values
	(0, '경상남도'),
	(0, '부산시');

insert into student_adrees_sigungu
values
	(0, '양산시'),
	(0, '부산진구'),
	(0, '금정구'),
	(0, '남구'),
	(0, '서구'),
	(0, '동래구');
    
insert into student_register_tb
values
	(0, 1, 2, 3),
	(0, 2, 2, 2),
	(0, 3, 2, 3),
	(0, 4, 2, 4),
	(0, 5, 2, 5),
	(0, 6, 2, 2),
	(0, 7, 2, 6),
	(0, 8, 1, 1),
	(0, 9, 2, 2),
	(0, 10, 2, 4);
    

create view student_register_view as 
SELECT 
	prt.student_id,
    pt.name,
    pt.age,
	prt.student_adrres_sido,
    pst.student_adrres_sido_id_name,
    prt.student_adress_sigungu,
    pct.student_adrees_sigungu_name
    
FROM 
	student_register_tb prt
    left outer join student_tb pt on(pt.student_id = prt.student_id)
    left outer join student_adrres_sido pst on(pst.student_adrres_sido_id_name = prt.student_adrres_sido)
	left outer join student_adrees_sigungu pct on(pct.student_adrees_sigungu_name = prt.student_adress_sigungu);


    
