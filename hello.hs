module Main (main) where

printStringNTimes 0 = return ()
printStringNTimes n =
    do
        -- let s = "name"
        -- putStrLn ("hello " ++ s)
        putStrLn ("number is " ++ show n)
        threadDelay (2*1000000)
        printStringNTimes (n-1)


main :: IO ()
main = do
    putStrLn ("hello jeanepaul!" ++ "aaa")
    printStringNTimes 10