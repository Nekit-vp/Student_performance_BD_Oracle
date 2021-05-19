CREATE TABLE "Students" (
	"id" varchar2(9) NOT NULL,
	"name" VARCHAR2(255) NOT NULL,
	"surname" VARCHAR2(255) NOT NULL,
	"patronymic" VARCHAR2(255) NOT NULL,
	"group_id" varchar2(9),
	"city_id" varchar2(9),
	"school_id" varchar2(9),
	constraint STUDENTS_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Groups" (
	"id" varchar2(9) NOT NULL,
	"curator_id" varchar2(9),
	"number_group" VARCHAR2(10) NOT NULL,
	"number" INT,
	"headman_id" varchar2(9),
	"direction_id" varchar2(9),
	constraint GROUPS_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Institutions" (
	"id" varchar2(9) NOT NULL,
	"name" VARCHAR2(255) NOT NULL,
	"director_id" varchar2(9),
	constraint INSTITUTIONS_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Directions" (
	"id" varchar2(9) NOT NULL,
	"name" VARCHAR2(255) NOT NULL,
	"manager_id" varchar2(9),
	"institution_id" varchar2(9),
	constraint DIRECTIONS_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Disciplines" (
	"id" varchar2(9) NOT NULL,
	"name" VARCHAR2(255) NOT NULL,
	constraint DISCIPLINES_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Employes" (
	"id" varchar2(9) NOT NULL,
	"name" VARCHAR2(255) NOT NULL,
	"surname" VARCHAR2(255) NOT NULL,
	"patronymic" VARCHAR2(255) NOT NULL,
	"languages" VARCHAR2(255),
	"education" VARCHAR2(255),
	"qualification" VARCHAR2(255),
	constraint EMPLOYES_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Student_performance" (
	"id" varchar2(9) NOT NULL,
	"student_id" varchar2(9),
	"mark_work_semester" INT NOT NULL,
	"mark_work_exam" INT NOT NULL,
	"final_grade" INT NOT NULL,
	"report_id" varchar2(9),
	constraint STUDENT_PERFORMANCE_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Report" (
	"id" varchar2(9) NOT NULL,
	"number_report" varchar2(9) NOT NULL,
	"group_id" varchar2(9),
	"hours" INT NOT NULL,
	"employee_id" varchar2(9),
	"discipline_id" varchar2(9),
	"format" VARCHAR2(50),
	"date" VARCHAR2(10),
	"semestr" varchar2(9),
	constraint REPORT_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Cities" (
	"id" varchar2(9) NOT NULL,
	"name" VARCHAR2(255) NOT NULL,
	constraint CITIES_PK PRIMARY KEY ("id"));


/
CREATE TABLE "Schools" (
	"id" varchar2(9) NOT NULL,
	"name" VARCHAR2(255) NOT NULL,
	constraint SCHOOLS_PK PRIMARY KEY ("id"));


/
ALTER TABLE "Students" ADD CONSTRAINT "Students_fk0" FOREIGN KEY ("group_id") REFERENCES "Groups"("id");
ALTER TABLE "Students" ADD CONSTRAINT "Students_fk1" FOREIGN KEY ("city_id") REFERENCES "Cities"("id");
ALTER TABLE "Students" ADD CONSTRAINT "Students_fk2" FOREIGN KEY ("school_id") REFERENCES "Schools"("id");

ALTER TABLE "Groups" ADD CONSTRAINT "Groups_fk0" FOREIGN KEY ("curator_id") REFERENCES "Employes"("id");
ALTER TABLE "Groups" ADD CONSTRAINT "Groups_fk1" FOREIGN KEY ("headman_id") REFERENCES "Students"("id");
ALTER TABLE "Groups" ADD CONSTRAINT "Groups_fk2" FOREIGN KEY ("direction_id") REFERENCES "Directions"("id");

ALTER TABLE "Institutions" ADD CONSTRAINT "Institutions_fk0" FOREIGN KEY ("director_id") REFERENCES "Employes"("id");

ALTER TABLE "Directions" ADD CONSTRAINT "Directions_fk0" FOREIGN KEY ("manager_id") REFERENCES "Employes"("id");
ALTER TABLE "Directions" ADD CONSTRAINT "Directions_fk1" FOREIGN KEY ("institution_id") REFERENCES "Institutions"("id");

ALTER TABLE "Student_performance" ADD CONSTRAINT "Student_performance_fk0" FOREIGN KEY ("student_id") REFERENCES "Students"("id");
ALTER TABLE "Student_performance" ADD CONSTRAINT "Student_performance_fk2" FOREIGN KEY ("report_id") REFERENCES "Report"("id");

ALTER TABLE "Report" ADD CONSTRAINT "Report_fk0" FOREIGN KEY ("group_id") REFERENCES "Groups"("id");
ALTER TABLE "Report" ADD CONSTRAINT "Report_fk1" FOREIGN KEY ("employee_id") REFERENCES "Employes"("id");
ALTER TABLE "Report" ADD CONSTRAINT "Report_fk2" FOREIGN KEY ("discipline_id") REFERENCES "Disciplines"("id");


