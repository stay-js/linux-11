1. Készíts egy bash scriptet datum.sh néven!

2. A script írjon ki helpet -h vagy --help esetén, majd lépjen ki hiba nélkül:
   HASZNALAT: ./datum.sh <datum1> <datum2>

3. Ha nem két paramétert kap a script, írja ki a helpet, majd lépjen ki hibával!

4. A script paramétereit ellenőrizzük, hogy helyes dátumformátum-e! (grep)
   A dátumformátum legyen ÉÉÉÉ.HH.NN!
   Ha nem helyes dátum, írja ki a script: "Hibas datum!" és lépjen ki hibával.

5. A paramétereket tároljuk el számként a DATUM1 és DATUM2 paraméterekben, a date parancs használatával.
   Adott formátumú dátum kiíratása másodpercben (epoch) (formátum pl %Y.%m.%d) :
   date -j -f <formátum> <dátum> +%s

6. Írd ki a standard outputra, hogy hány _munkanap_ van a két dátum között!
   Adott másodpercből (epoch) hét napja számítás (0 - vasárnap, 1 - hétfő, stb) :
   date -r <másodpercek> +%w

7. Ha a DATUM1 későbbi időpont, mint DATUM2, akkor a válasz legyen 0
