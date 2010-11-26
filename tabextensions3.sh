
appname="${0##*/}"
appname="${appname%.sh}"
appname="${appname%_test}"

rm -f *.xpi

mkdir xpi_temp
cp *.rdf xpi_temp/
cd xpi_temp

cp ../../multipletab/multipletab.xpi ./
cp ../../informationaltab/informationaltab.xpi ./
cp ../../treestyletab/treestyletab.xpi ./
cp ../../viewsourceintab/viewsourceintab.xpi ./
cp ../../openbookmarkintab/openbookmarkintab.xpi ./
cp ../../openlinkintab/openlinkintab.xpi ./
cp ../../newtabfromlocationbar/newtabfromlocationbar.xpi ./

chmod -cfr 644 *.rdf *.xpi
zip -9 "../${appname}.xpi" *.rdf *.xpi
del "../${appname}.xpi"
# mv ../${appname}.xpi o:\xul\xpi\



del "*.xpi"

cp ../../multipletab/multipletab_noupdate.xpi ./
cp ../../informationaltab/informationaltab_noupdate.xpi ./
cp ../../treestyletab/treestyletab_noupdate.xpi ./
cp ../../viewsourceintab/viewsourceintab_noupdate.xpi ./
cp ../../openbookmarkintab/openbookmarkintab_noupdate.xpi ./
cp ../../openlinkintab/openlinkintab_noupdate.xpi ./
cp ../../newtabfromlocationbar/newtabfromlocationbar.xpi_noupdate ./

chmod -cfr 644 *.rdf *.xpi
zip -9 "../${appname}_noupdate.xpi" *.rdf *.xpi
del "../${appname}_noupdate.xpi"
# mv ../${appname}_noupdate.xpi o:\xul\xpi\

cd ..
rm -rf xpi_temp

