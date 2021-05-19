CREATE OR REPLACE TRIGGER inn_trigger
    BEFORE INSERT OR UPDATE
    ON "Students"
    FOR EACH ROW
DECLARE
    valid_inn boolean := true;
    temp varchar2(1);
	consist boolean;
BEGIN
    valid_inn := valid_inn AND 
				((length(:NEW."INN") = 12) OR (length(:NEW."INN") = 10) );

    for i in 1..length(:NEW."INN") loop
        temp := substr(:NEW."INN", i, 1);
		consist := temp IN ('1', '2', '3', '4', '5', '6', '7', '8', '9', '0');
        valid_inn := valid_inn AND consist;
    end loop;

    if not valid_inn THEN
        Raise_application_error(-20201, 'Invald INN form');
    end if;

END;