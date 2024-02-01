Készíts egy konyvtar.sh nevű bash szkriptet!

1. Készíts egy for ciklust, amely a parancssor paramétereit kapja meg feldolgozásra, lásd: $@.

2. A for cikluson belül egy case szerkezettel teszteld a paramétereket!

3. A -h vagy -–help opciók esetén írjon ki egy használati súgó szöveget és lépjen ki
   hibakód nélkül. A help szövege legyen:
   HASZNALAT: ./konyvtar.sh [-p | --pwd] | <konyvtar1> <konyvtar2> ...

4. A -p vagy –-pwd opciók esetén írja ki az aktuális könyvtár útvonalát.

5. Bármely más argumentumot vegyen könyvtárnévnek, majd hozza létre a könyvtárat, ha nem létezik és tesztelje a létezését. Ha létezett, ne írjon ki semmit a standard outputra. Hiba esetén írjon ki hibaüzenetet a standard errorra pl:
   ./konyvtar.sh alma
   alma: már létezik

6. Ha volt már létező könyvtár, a hibakód legyen 1!
