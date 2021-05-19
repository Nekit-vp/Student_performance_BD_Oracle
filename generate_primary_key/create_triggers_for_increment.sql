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

