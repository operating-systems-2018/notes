MODULE getenvTest;

IMPORT Out, Platform; (* Out for output, Platfor for GetEnv *)

VAR
  str: ARRAY  32 OF CHAR;

BEGIN
  str := "";
  Platform.GetEnv("SERVER_NAME", str);
  
  IF str = "" THEN
    (* default *)
    str := "aua.am";
  END;

  Out.String ("connecting to "); Out.String (str);
  Out.Ln

END getenvTest.
