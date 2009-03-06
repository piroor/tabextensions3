setlocal
set appname=%~n0

c:
cd c:\Users\Public\data\codes\%appname%


del "*.xpi"

mkdir xpi_temp
copy *.rdf xpi_temp\
cd xpi_temp

copy o:\xul\xpi\multipletab.xpi .\
copy o:\xul\xpi\informationaltab.xpi .\
copy o:\xul\xpi\treestyletab.xpi .\
copy o:\xul\xpi\viewsourceintab.xpi .\

chmod -cfr 644 *.rdf *.xpi
zip -9 "..\%appname%.xpi" *.rdf *.xpi
del "o:\xul\xpi\%appname%.xpi"
mv ..\%appname%.xpi o:\xul\xpi\



del "*.xpi"

copy c:\Users\Public\data\codes\multipletab\multipletab_noupdate.xpi .\
copy c:\Users\Public\data\codes\informationaltab\informationaltab_noupdate.xpi .\
copy c:\Users\Public\data\codes\treestyletab\treestyletab_noupdate.xpi .\
copy c:\Users\Public\data\codes\viewsourceintab\viewsourceintab_noupdate.xpi .\

chmod -cfr 644 *.rdf *.xpi
zip -9 "..\%appname%_noupdate.xpi" *.rdf *.xpi
del "o:\xul\xpi\%appname%_noupdate.xpi"
mv ..\%appname%_noupdate.xpi o:\xul\xpi\

cd ..
rm -r xpi_temp


endlocal
