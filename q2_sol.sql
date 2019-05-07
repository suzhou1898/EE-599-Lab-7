create table joint1 as select student_name,course FROM Student_registration where student_name not in (SELECT student_name FROM Student_registration where status='ip')

create table joint2 as select * from (SELECT joint1.student_name, joint1.course, courses.units FROM joint1 LEFT JOIN courses ON joint1.course=courses.course) as temp order by temp.student_name

select * from (SELECT student_name as Name,SUM(units) as Units_complete FROM joint2 GROUP BY Name) as temp where temp.Units_complete>10
