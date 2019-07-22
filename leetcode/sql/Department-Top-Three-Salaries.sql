SELECT d.name department
     , e.name employee
     , salary
  FROM department d
  JOIN employee e on d.id = e.departmentId
 WHERE 4  >  (select count(distinct salary)
                from employee e1
               where e1.departmentId = e.departmentId
                     and e.salary  <= e1.salary
            group by e1.departmentId
        )
order by 1,3 desc


