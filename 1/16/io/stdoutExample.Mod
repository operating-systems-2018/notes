MODULE stdoutExample;

IMPORT Platform, SYSTEM;

VAR
  str : ARRAY 5 OF CHAR;
  p   : SYSTEM.ADDRESS;
  i   : INTEGER;
BEGIN
  str := ".";
  p := SYSTEM.ADR(str);

  WHILE TRUE DO
    i := Platform.Write(stdout, p, 1);
    Platform.Delay(1000)
  END


END stdoutExample.
