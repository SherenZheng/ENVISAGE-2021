set baseName=ANX1
set oDir=z:\Output\Env10\%baseName%
gams runSim --simName=%1 --BauName=%2 --simType=%3 --ifCal=%4 --baseName=%baseName% --odir=%oDir% -idir=..\Model -scrdir=%oDir% -ps=9999 -pw=121 -errmsg=1
