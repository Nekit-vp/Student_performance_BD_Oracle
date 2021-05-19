CREATE TABLE sys_table (
    id NUMBER NOT NULL PRIMARY KEY,
    table_name NVARCHAR2(50) NOT NULL,
    code NVARCHAR2(3) NOT NULL
);


INSERT ALL 
    INTO sys_table VALUES(1, 'STUDENTS', 'A')
    INTO sys_table VALUES(2, 'GROUPS', 'B')
    INTO sys_table VALUES(3, 'INSTITUTIONS', 'C')
    INTO sys_table VALUES(4, 'DIRECTIONS', 'D')
    INTO sys_table VALUES(5, 'DISCIPLINES', 'E')
    INTO sys_table VALUES(6, 'EMPLOYES', 'F')
    INTO sys_table VALUES(7, 'STUDENT_PERFORMANCE', 'G')
    INTO sys_table VALUES(8, 'REPORT', 'H')
    INTO sys_table VALUES(9, 'CITIES', 'I')
    INTO sys_table VALUES(10, 'SCHOOLS', 'J')
SELECT * FROM dual;
 



