module Module1 (testFn, testPrint) where
import Control.Concurrent
import Control.Monad
import System.Random

testFn :: IO()
testFn = do
    print "from module1"

testPrint :: String -> Int -> Int -> IO()
testPrint threadName x delay = do
    threadDelay delay
    print $ threadName ++ "-> hello! jeane paul " ++ (show x)
    testPrint threadName (updateInt x) delay

updateInt :: Int -> Int
updateInt n = do
    n+1

-- randomDelay :: IO()
-- randomDelay = do
--     randomRIO(1, 10000 :: Int)