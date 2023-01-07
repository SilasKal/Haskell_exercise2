--2a)

bin :: Integer -> Integer -> Integer
bin k n
    | k==0 = 1
    | n==k = 1
    | otherwise = (bin (k - 1) (n - 1)) +
                  (bin (k) (n - 1))

-- Testfälle
-- Eingabe      Ausgabe
-- bin 3 6      20
-- bin 5 7      21
-- bin 0 8      1
-- bin 3 8      56
-- bin 7 8      8

bin2 :: Float -> Float -> Float
bin2 k n
    | k == 0 = 1.0
    | otherwise = counter 1.0 k n

counter :: Float -> Float -> Float -> Float
counter c k n
    | c == k+1 = 1
    | c < k+1 = (n/c)* (counter (c+1.0) k (n-1.0))

-- Testfälle
-- Eingabe      Ausgabe
-- bin2 3 6      20.0
-- bin2 5 7      21.0
-- bin2 0 8      1.0
-- bin2 3 8      56.0
-- bin2 7 8      8.0


--2c)
-- Die Anzahl der durchgeführten Multiplikationen in der Funktion counter sind linear abhängig von k bzw n. Es werden nämlich im schlechtestem Fall k- Multiplikationen durchgeführt (n/1 bis n-k+1/k).
-- Damit hat die Funktion eine Laufzeit von O(n). Das gleiche gilt für die Funktion von a), dort sooft eine Addition stattfindet bis k = 0 oder n = k
-- damit müssen im schlechtesten Fall n Additionen durchgeführt werden, da n>k gelten muss. Daraus folgt, dass die Funktion eine Laufzeit von O(n) hat.
