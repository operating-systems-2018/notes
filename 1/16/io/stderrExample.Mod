MODULE stderrExample;

IMPORT Platform, SYSTEM;

CONST
  stdout = 1;
  stderr = 2;


VAR
  str : ARRAY 5 OF CHAR;
  p   : SYSTEM.ADDRESS;
  i   : INTEGER;
BEGIN
  str := ".";
  p := SYSTEM.ADR(str);

  WHILE TRUE DO
    i := Platform.Write(stderr, p, 1);
    Platform.Delay(1000);
  END


END stderrExample.
