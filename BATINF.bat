:REM
COPY /A "%0" B$
FOR %%B IN (*.BBB) DO (
SET /P Y=<"%%B"
IF NOT "%Y%"==":REM" (
 CALL COPY B$+%%B 
 MOVE B$ %%B
 )
CALL DEL ?$
)