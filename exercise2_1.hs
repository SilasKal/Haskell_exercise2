-- 1. a) Nein die gegebene Funktion ist nicht endrekursiv, da nicht der rekursive Aufruf sondern die Multiplikation die letze Aktion bildet.
potenz q n = if n==0 then 1 else q*potenz q (n-1)

--1b)
schleife q n i ergebnis = if i > n
                 then ergebnis
                 else schleife q n (i+1) (q * ergebnis)

potenz2 _ 0 = 1
potenz2 q n = schleife q n 1 1

--1c)
potenz3 _ 0 = 1
potenz3 q n = if even n then accelerated q n else q * (potenz3 q (n-1))

accelerated q 2 = q * q
accelerated q n = accelerated (accelerated q (n `quot` 2)) 2

--1d)
-- Eingabe      Ausgabe
-- sth 8 0      1
-- sth 8 3      512
-- potenz2 8 0  1
-- potenz2 8 3  512
-- potenz 8 0   1
-- potenz 8 3   512
