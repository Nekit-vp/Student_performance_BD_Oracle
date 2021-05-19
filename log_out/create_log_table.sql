CREATE TABLE "system_log" (
	"id" VARCHAR2(10) NOT NULL,
	"table_code" NVARCHAR2(5) NOT NULL,
    "log_date" DATE NOT NULL,
    "action" VARCHAR2(20) NOT NULL,
	constraint system_log_pk PRIMARY KEY ("id")
);