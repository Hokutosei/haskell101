module Main (main) where
import qualified Module1 as Mo
import qualified Reminders as Re
import Control.Concurrent (forkIO, threadDelay)
import Control.Monad
import Text.Printf
import Network.HTTP

loopPrint :: IO()
loopPrint = do
    threadDelay 1000000
    print "loopPrint!"

askInput :: IO()
askInput = do
    s <- getLine
    print "delay time"
    t <- getLine
    forkIO $ Re.setReminder s t
    return ()

get :: String -> IO String
get url = do
    simpleHTTP (getRequest url) >>= getResponseBody


main :: IO ()
main = do
    let resp = getRequest "http://api.openweathermap.org/data/2.5/weather?id=6822131&appid=c455dfa704c974e99ad8918d2757476e"
    print resp
    -- print resp
    print "starting!"
    forever $ askInput
