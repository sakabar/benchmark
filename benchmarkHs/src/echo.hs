import Control.Applicative

main = do
  mapM_ putStrLn =<< lines <$> getContents
