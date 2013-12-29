times :: Int -> IO() -> IO()
times 0 f = return()
times 1 f = f
times n f = do
  f
  times (n-1) f


main = do
  10000000 `times` (putStrLn "Hello, World!")
