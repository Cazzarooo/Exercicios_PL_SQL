SET SERVEROUTPUT on
-- Exemplo 1
DECLARE 
    soma NUMBER := 0;
BEGIN
    FOR i IN 1..10 LOOP
    DBMS_OUTPUT.PUT_LINE(i);
    DBMS_OUTPUT.PUT_LINE(soma || '+' || i);
        soma := soma + i;
    END LOOP;
        DBMS_OUTPUT.PUT_LINE('0 total é: ' || soma);
END;

--Exemplo 2
BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;

--Exemplo 3
DECLARE
    i NUMBER := 1;
    total NUMBER := 0;
BEGIN
    WHILE i <= 5 LOOP
    DBMS_OUTPUT.PUT_LINE(i);
        total := total + i;
         DBMS_OUTPUT.PUT_LINE('O total é: ' || total);
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('O total é: ' || total);
END;

--Exemplo 4

DECLARE 
    i NUMBER := 1;
    total NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        total := total + i;
        i := i + 1;
        EXIT WHEN i > 7;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('O total é: ' || total);
END;

--Exemplo 5

DECLARE
    multiplicando NUMBER;
    multiplicador NUMBER;
    resultado NUMBER;
BEGIN
    
    FOR multiplicando IN 1..2 LOOP
    
        FOR multiplicador IN 1..10 LOOP
            resultado := multiplicando * multiplicador;
            DBMS_OUTPUT.PUT_LINE(multiplicando || ' * ' || multiplicador || ' = ' || resultado || '  ');
        END LOOP;
    END LOOP;
END;
        