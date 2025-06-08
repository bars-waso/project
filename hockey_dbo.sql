SELECT * FROM public.hockey
ORDER BY playerno ASC;
insert into hockey (playerno,playername,jerseycolor) values
(08,'Ramsey Mrengu','yellow'),
(9,'Samuel Kopo','green'),
(2,'Gideon Oskuk','yellow'),
(3,'Patrick Bahati','green'),
(1,'Michael Barasa','green'),
(6,'Moris Oronje','white');

-- CREATE TABLE hockey
-- (
--     playerno integer NOT NULL,
--     playername character varying(50)  NOT NULL,
--     jerseycolor character varying(50) ,
--     coach character varying(50) ,
--     status character varying(50) ,
--     coach_salary numeric(10,2),
--     new_salary_scheme numeric(10,2),
--     coaching_hours numeric(10,2),
--     CONSTRAINT hockey_pkey PRIMARY KEY (playerno)
-- );

insert into hockey (playerno,playername,jerseycolor) values
(4,'Uray Oronje','green');
-----------------------------------------------------------------------------------
alter table hockey
add column coach varchar(50)

-----------------------------------------------------------------------------------
update hockey
set coach = case
		when jerseycolor = 'green' then 'Hannington Ogutu'
		when jerseycolor = 'yellow' then 'Brian Lupao'
		when jerseycolor = 'white' then 'Godfrey Sakin'
		else coach
end;
-----------------------------------------------------------------------------------
select h.playername,
	   h.playerno,
	   h.stickno,
	   h.coach,
	   h.jerseycolor,
	   'Active' as status
from hockey h
union
select h.playername,
	   h.playerno,
	   h.stickno,
	   h.coach,
	   h.jerseycolor,
	   'Inactive' as status
from hockey h		
where jerseycolor = 'green'
where jerseycolor = 'yellow'
---------------------------------------------------------------------------------------
select h.playername,
	   h.playerno,
	   h.stickno,
	   h.coach,
	   h.jerseycolor,
	   'Active' as status
from hockey h
where jerseycolor = 'green';

select h.playername,
	   h.playerno,
	   h.stickno,
	   h.coach,
	   h.jerseycolor,
	   'Inactive' as status
from hockey h
where jerseycolor = 'yellow';

select h.playername,
	   h.playerno,
	   h.stickno,
	   h.coach,
	   h.jerseycolor,
	   'Lazy' as status
from hockey h
where jerseycolor = 'white';
------------------------------------------------------------------------------------
select h.playername,
	   h.playerno,
	   h.stickno,
	   h.coach,
	   h.jerseycolor
	   'Not qualified' as EA
from hockey h
-------------------------------------------------------------------------------------
alter table hockey
add column status varchar(50);
------------------------------------------------------------------------------------
update hockey
set status = case
		when jerseycolor = 'yellow' then 'inactive'
		when jerseycolor = 'green' then 'active'
		when jerseycolor = 'white' then 'lazy'
end;
-------------------------------------------------------------------------------------
alter table hockey 
drop column stickno;
--------------------------------------------------------------------------------------
alter table hockey
add column coach_salary decimal(10,2);

select * from hockey
--------------------------------------------------------------------------------------
update hockey
set coach_salary = case
		when status = 'active' then 4234.67
		when status = 'inactive' then 2453.45
		when status = 'lazy' then 1567.91
end;
--------------------------------------------------------------------------------------
alter table hockey
add column coaching_hour decimal(10,2);
-------------------------------------------------------------------------------------
update hockey
set coaching_hours = 4.19
	where playerno = 2;
select * from hockey
--------------------------------------------------------------------------------------
update hockey
set coaching_hours = 
	where playerno < 3
--------------------------------------------------------------------------------------
alter table hockey 
add column new_salary_scheme decimal(10,2);
--------------------------------------------------------------------------------------
update hockey
set coach_salary = case
		when status = 'active' then; 
---------------------------------------------------------------------------------------
update hockey 
set new_salary_scheme = case
		when coaching_hours between 0.3 and 2.3 then coach_salary * 2.1
		when coaching_hours between 2.4 and 4.3 then coach_salary * 3.5
		when coaching_hours between 4.4 and 6.3 then coach_salary * 10
		when coaching_hours between 6.4 and 7.3 then coach_salary * 5.3
		when coaching_hours between 7.4 and 8.3 then coach_salary * 5.7
end;
---------------------------------------------------------------------------------------
update hockey 
set playerno = 1
	where playerno = 40;

select * from hockey
-----------------------------------------------------------------------------------





	  




