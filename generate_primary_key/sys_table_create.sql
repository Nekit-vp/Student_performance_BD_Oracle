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
 
CREATE OR REPLACE FUNCTION get_table_code(t_name NVARCHAR2) RETURN NVARCHAR2
    IS
        code NVARCHAR2(5);
BEGIN
    SELECT code INTO code FROM sys_table 
    WHERE table_name = t_name;
    RETURN code;
END;


CREATE OR REPLACE FUNCTION next_id(cur int, t_name NVARCHAR2)
   RETURN VARCHAR2 
   IS result VARCHAR(10);

   temp VARCHAR2(10);
   code VARCHAR2(3);

   BEGIN 
   
     code := get_table_code(t_name);

      temp := CAST(cur AS VARCHAR2);

      while (length(temp) < 9) loop
        temp := CONCAT('0', temp);

        end loop;

      temp := CONCAT(code, temp);

      return temp;

    END next_id;
    
    
---select next_id(1, 'STUDENT_PERFORMANCE') from dual;

---select get_table_code('SCHOOLS') from dual;

CREATE OR REPLACE TRIGGER Students_on_insert
  BEFORE INSERT ON "Students"
  FOR EACH ROW
BEGIN
  SELECT next_id("Students_sequence".nextval, 'Students')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Groups_on_insert
  BEFORE INSERT ON "Groups"
  FOR EACH ROW
BEGIN
  SELECT next_id("Groups_sequence".nextval, 'Groups')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Institutions_on_insert
  BEFORE INSERT ON "Institutions"
  FOR EACH ROW
BEGIN
  SELECT next_id("Institutions_sequence".nextval, 'Institutions')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Directions_on_insert
  BEFORE INSERT ON "Directions"
  FOR EACH ROW
BEGIN
  SELECT next_id("Directions_sequence".nextval, 'Directions')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Disciplines_on_insert
  BEFORE INSERT ON "Disciplines"
  FOR EACH ROW
BEGIN
  SELECT next_id("Disciplines_sequence".nextval, 'Disciplines')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Employes_on_insert
  BEFORE INSERT ON "Employes"
  FOR EACH ROW
BEGIN
  SELECT next_id("Employes_sequence".nextval, 'Employes')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Student_performance_on_insert
  BEFORE INSERT ON "Student_performance"
  FOR EACH ROW
BEGIN
  SELECT next_id("Student_performance_sequence".nextval, 'Student_performance')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Report_on_insert
  BEFORE INSERT ON "Report"
  FOR EACH ROW
BEGIN
  SELECT next_id("Report_sequence".nextval, 'Report')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Cities_on_insert
  BEFORE INSERT ON "Cities"
  FOR EACH ROW
BEGIN
  SELECT next_id("Cities_sequence".nextval, 'Cities')
  INTO :NEW."id"
  FROM dual;
END;

CREATE OR REPLACE TRIGGER Schools_on_insert
  BEFORE INSERT ON "Schools"
  FOR EACH ROW
BEGIN
  SELECT next_id("Schools_sequence".nextval, 'Schools')
  INTO :NEW."id"
  FROM dual;
END;


