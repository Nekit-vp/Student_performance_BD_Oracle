
	
	
CREATE OR REPLACE TRIGGER log_Students
  AFTER UPDATE OR INSERT OR DELETE ON "Students"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Students'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Students'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Groups
  AFTER UPDATE OR INSERT OR DELETE ON "Groups"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Groups'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Groups'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Institutions
  AFTER UPDATE OR INSERT OR DELETE ON "Institutions"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Institutions'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Institutions'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Directions
  AFTER UPDATE OR INSERT OR DELETE ON "Directions"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Directions'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Directions'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Disciplines
  AFTER UPDATE OR INSERT OR DELETE ON "Disciplines"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Disciplines'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Disciplines'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Employes
  AFTER UPDATE OR INSERT OR DELETE ON "Employes"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Employes'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Employes'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Student_performance
  AFTER UPDATE OR INSERT OR DELETE ON "Student_performance"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Student_performance'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Student_performance'), SYSDATE, 'DEL');
END IF;
end;


CREATE OR REPLACE TRIGGER log_Report
  AFTER UPDATE OR INSERT OR DELETE ON "Report"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Report'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Report'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Cities
  AFTER UPDATE OR INSERT OR DELETE ON "Cities"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Cities'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Cities'), SYSDATE, 'DEL');
END IF;
end;

CREATE OR REPLACE TRIGGER log_Schools
  AFTER UPDATE OR INSERT OR DELETE ON "Schools"
  FOR EACH ROW
BEGIN
  If (INSERTING OR UPDATING) 
  THEN
    INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
     VALUES (:NEW."id", get_table_code('Schools'), SYSDATE, 'INS_UPD');
  ELSE  
   INSERT INTO "system_log" ("id", "table_code", "log_date", "action")
    VALUES (:OLD."id", get_table_code('Schools'), SYSDATE, 'DEL');
END IF;
end;