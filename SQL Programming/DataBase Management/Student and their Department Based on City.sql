select Student.student_name,Department.department_name from Student inner join Department on Student.department_id=department.department_id
where Student.city="Coimbatore" order by student_name;
