create or replace package
EMP_DESIGNATION
as procedure emp_details(design employee.designation%type,incentive number);
end emp_designation;
/
create or replace package body 
emp_designation
as
procedure emp_details(design employee.designation%type,incentive number)
is
begin
update employee
set employee.salary = employee.salary + incentive
where employee.designation = design;
dbms_output.put_line(
sql%rowcount ||'employee(s) are updated.');
END emp_details;
END emp_designation;
/
