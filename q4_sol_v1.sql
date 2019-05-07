create table temp1 as SELECT * FROM ChefSkill WHERE Dish IN (SELECT * FROM Menu)

create table temp2 as SELECT chef,count(dish) as dishtotal1 from temp1 group by chef

create table temp3 as select count(*) as dishtotal2 from menu

select temp2.chef from temp2 inner join temp3 on temp2.dishtotal1=temp3.dishtotal2
