fact :: Integer -> Integer
fact n = fact' n 1
  where fact' 0 ans = ans
        fact' n ans =  fact' (n-1) (n * ans)


printFact :: Integer -> Integer -> IO()
printFact n 1 = do
  putStrLn $ show $ fact n

printFact n t = do
  putStrLn $ show $ fact n
  printFact n (t-1)

main = do
  printFact 3000 100
