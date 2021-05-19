CREATE OR REPLACE TRIGGER snils_trigger
    BEFORE INSERT OR UPDATE
    ON "Students"
    FOR EACH ROW
DECLARE
    is_snils boolean := true;
    temp varchar2(1);
	snils varchar2(11);
	hash_sum PLS_INTEGER;
	consist boolean;
	snils_number NUMBER(11,0);
	computable_hash_sum PLS_INTEGER;
	ord PLS_INTEGER;
    digit PLS_INTEGER;
	snils_val PLS_INTEGER;
	verifable_value PLS_INTEGER;
	
BEGIN
    is_snils := is_snils AND (length(:NEW."SNILLS") = 11);

    for i in 1..length(:NEW."SNILLS") loop
        temp := substr(:NEW."SNILLS", i, 1);
		consist := temp IN ('1', '2', '3', '4', '5', '6', '7', '8', '9', '0');
        is_snils := is_snils AND consist;
    end loop;
	
	snils := :NEW."SNILLS";
	
	snils_number := TO_NUMBER(snils);
	verifable_value := TRUNC(snils_number / 100);
	
	IF verifable_value <= 1001998 THEN
            is_snils := false;
        END IF;
		
	hash_sum := MOD(snils_number, 100);
	
	-------------------------------------
	
	computable_hash_sum := 0;
	snils_val := verifable_value;	
	
	LOOP
        digit := MOD(snils_val, 10);
        computable_hash_sum := computable_hash_sum + digit * ord;
                
        snils_val := TRUNC(snils_val / 10);
        ord := ord + 1;
                
        EXIT WHEN snils_val <= 0;
    END LOOP;
	
	computable_hash_sum := MOD(computable_hash_sum, 101);
	
	---------------------------------
	IF hash_sum <> computable_hash_sum THEN
            is_snils := false;
    END IF;
	
    if not is_snils THEN
        Raise_application_error(-20201, 'INVALID SNILLS CORRECT');
    end if;

END;