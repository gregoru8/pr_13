--Создание таблиц
create table table1 (
	id1 int not null,
	id2 int not null,
	gen1 text not null,
	gen2 text,
	primary key (id1, id2, gen1)
);

create table table2 (
	like table1
);

insert into table1 select gen,gen, gen::text || 'text1', gen::text || 'text2' from generate_series(1,200000) gen;
insert into table2 select gen,gen, gen::text || 'text1', gen::text || 'text2' from generate_series(1,400000) gen;

explain analyze
select *
from table1 t1
join table2 t2 on t1.id1 = t2.id1;

-- ctrl+shift+e
select *
from table1 t1
join table2 t2 on t1.id1 = t2.id1;


--запрос с join
select t1.gen2, t2.gen1
from table1 t1
left join table2 t2 on t1.id1 = t2.id1 
limit 20

--запрос с group by
select id1, (gen1 ||', '|| gen2) as gen1_and_gen2
from table1 t1
group by id1, gen1_and_gen2
limit 20

--запрос с подзапросом
select *
from table1
where id1 = (select min(id1) from table2);

--13.8
explain (analyze, costs, verbose, buffers, format json)
select *
from table1 t1
join table2 t2 on t1.id1 = t2.id1;

--запрос с join
explain (analyze, costs, verbose, buffers, format json)
select t1.gen2, t2.gen1
from table1 t1
left join table2 t2 on t1.id1 = t2.id1 

--запрос с group by
explain (analyze, costs, verbose, buffers, format json)
select id1, (gen1 ||', '|| gen2) as gen1_and_gen2
from table1 t1
group by id1, gen1_and_gen2
limit 20

--запрос с подзапросом
explain (analyze, costs, verbose, buffers, format json)
select *
from table1
where id1 = (select min(id1) from table2);

select * from table1 t1
full join table2 t2 on t1.id1=t2.id1
