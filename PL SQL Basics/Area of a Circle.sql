declare
V_RADIUS number(5);
V_AREA number(7,2);
pi constant number(3,2) :=3.14;
begin
V_RADIUS:=3;
while V_RADIUS<=7
loop
V_AREA:=pi*V_RADIUS*V_RADIUS;
insert into CIRCLE
values(V_RADIUS,V_AREA);
V_RADIUS:=V_RADIUS+1;
end loop;
end;
/
