import qualified Data.ByteString.Lazy.Char8 as BS
import Control.Applicative

main = do
  mapM_ BS.putStrLn =<< BS.lines <$> BS.getContents
