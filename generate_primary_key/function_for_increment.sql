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