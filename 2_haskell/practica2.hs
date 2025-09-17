-- 1. Promedio de 4 números
promedio :: Float -> Float -> Float -> Float -> Float
promedio a b c d = (a + b + c + d) / 4


-- 2. Suma de monedas
monedas :: Int -> Int -> Int -> Int -> Float
monedas a b c d = fromIntegral (a*1 + b*5 + c*10 + d*50)


-- 3. Volumen de una esfera
volumenEsfera :: Float -> Float
volumenEsfera r = (4/3) * pi * r^3


-- 4. Verificar si a, b y c son iguales
todosIguales :: Int -> Int -> Int -> Bool
todosIguales a b c = (a == b) && (b == c)


-- 5. Verificar si a, b y c son diferentes
todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c = (a /= b) && (a /= c) && (b /= c)


-- 6. Precio final con descuentos
precioFinal :: Float -> Float
precioFinal compra
    | compra > 1000 = compra * 0.60
    | compra > 500  = compra * 0.70
    | compra > 100  = compra * 0.90
    | otherwise     = compra


-- 7. Última cifra de un número
ultimaCifra :: Int -> Int
ultimaCifra n = abs n `mod` 10


-- 8. Menú principal
menu :: IO ()
menu = do
    putStrLn "---- MENU ----"
    putStrLn "1. Promedio de 4 números"
    putStrLn "2. Suma de monedas"
    putStrLn "3. Volumen de una esfera"
    putStrLn "4. Verificar si 3 números son iguales"
    putStrLn "5. Verificar si 3 números son diferentes"
    putStrLn "6. Calcular precio final con descuentos"
    putStrLn "7. Última cifra de un número"
    putStrLn "8. Salir"
    putStrLn "Selecciona una opción: "
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn "Ingresa 4 números (Float):"
            a <- readLn :: IO Float
            b <- readLn :: IO Float
            c <- readLn :: IO Float
            d <- readLn :: IO Float
            print (promedio a b c d)
            menu
        "2" -> do
            putStrLn "Ingresa cantidad de monedas a($1), b($5), c($10), d($50):"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            d <- readLn :: IO Int
            print (monedas a b c d)
            menu
        "3" -> do
            putStrLn "Ingresa el radio de la esfera (Float):"
            r <- readLn :: IO Float
            print (volumenEsfera r)
            menu
        "4" -> do
            putStrLn "Ingresa 3 números (Int):"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            print (todosIguales a b c)
            menu
        "5" -> do
            putStrLn "Ingresa 3 números (Int):"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            print (todosDiferentes a b c)
            menu
        "6" -> do
            putStrLn "Ingresa el monto de la compra (Float):"
            compra <- readLn :: IO Float
            print (precioFinal compra)
            menu
        "7" -> do
            putStrLn "Ingresa un número (Int):"
            n <- readLn :: IO Int
            print (ultimaCifra n)
            menu
        "8" -> putStrLn "Saliendo..."
        _   -> do
            putStrLn "Opción no válida"
            menu
