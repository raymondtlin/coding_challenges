SELECT name as Employee
FROM employee emp
WHERE salary > (SELECT salary FROM
                  employee mgr
               WHERE mgr.id = emp.managerId)
