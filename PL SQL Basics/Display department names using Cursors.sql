set serveroutput on;
declare
cursor c_dept is select department_name
from department order by department_name;
v_dept c_dept%rowtype;
begin
open c_dept;
dbms_output.put_line('Department Names are :');
loop
fetch c_dept into v_dept;
exit when c_dept%notfound;
dbms_output.put_line(upper(v_dept.department_name));
end loop;
close c_dept;
end;
