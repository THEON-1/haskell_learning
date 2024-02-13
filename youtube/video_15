
hw = putStrLn "Hello World"
hw :: IO ()

ghci> hw
Hello World
ghci> hw
Hello World
ghci> hw
Hello World

getLine :: IO String

greet :: IO ()
greet = do
    putStrLn "What is your name?"
    name <- hetLine
    let uname = map toUpper name
    putStrLn ("Hello " ++ uname ++ ".")

!!! never use !!!
unsafePerformIO :: IO a -> a

main :: IO ()
main = do
    i <- getLine
    if i /= "quit" then do
        putStrLn ("Input: " ++ i)
        main
    else
        return ()

count :: Int -> Int -> IO ()
count n m = do
    putStrLn (show n)
    if n < m then
        count (n+1) m
    else
        return ()
