DECLARE
v_department_id number(5);
v_department_name varchar2(25);
v_location_id varchar2(15);
begin
select
DEPARTMENT_ID,DEPARTMENT_NAME into
v_department_id,v_department_name from
DEPARTMENT where LOCATION_ID LIKE 
'HQ%';
UPDATE DEPARTMENT SET 
LOCATION_ID='HQ-BLR-101' WHERE
DEPARTMENT_ID=v_department_id AND
DEPARTMENT_NAME=v_department_name;
end;
/
