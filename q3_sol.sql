select * from (SELECT Employee.name, bonus.bonus FROM employee left JOIN bonus ON employee.empId=bonus.empId) as temp where (temp.bonus<1000 or temp.bonus is null)
