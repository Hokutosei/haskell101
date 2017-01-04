module Reminders (setReminder) where
import Control.Concurrent (threadDelay)
import Data.Time (getCurrentTime)

data Person = Person { name :: String, age :: Int }

setReminder :: String -> String -> IO()
setReminder timerName delay = do
    let michael = Person "Michael" 25
    putStrLn ": " ++ show michael
    let delayTime = read delay :: Int
    print ("setting reminder! " ++ timerName ++ " for time " ++ show delayTime)
    threadDelay (10^6 * delayTime)
    time <- getCurrentTime
    putStrLn ("reminder fire! for " ++ timerName ++ ": " ++ show time)
    return ()