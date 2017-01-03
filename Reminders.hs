module Reminders (setReminder) where
import Control.Concurrent (threadDelay)

setReminder :: String -> String -> IO()
setReminder timerName delay = do
    let delayTime = read delay :: Int
    print ("setting reminder! " ++ timerName ++ " for time " ++ (show delayTime))
    threadDelay (10^6 * delayTime)
    print ("reminder fire! for " ++ timerName)
    return ()