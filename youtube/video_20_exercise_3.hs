import System.IO
import Data.Char (toLower)
import Text.Printf (printf)
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    putStrLn "Specify the words to search:"
    words <- readWords
    putStr "File to search: "
    file <- getLine
    fileContent <- readFile file
    results <- searchWords fileContent words
    printFound results
    printNotFound results
    return ()

readWords :: IO [String]
readWords = do
    putStr "> "
    word <- getLine
    if null word
    then return []
    else do
        words <- readWords
        return (word:words)

printFound :: [(String, Bool)] -> IO ()
printFound [] = return ()
printFound ((word, found):results) = do
    when found $ putStrLn ("\"" ++ word ++ "\" found")
    printFound results


printNotFound :: [(String, Bool)] -> IO ()
printNotFound [] = return ()
printNotFound ((word, found):results) = do
    unless found $ putStrLn ("\"" ++ word ++ "\" NOT found")
    printNotFound results

searchWords :: String -> [String] -> IO [(String, Bool)]
searchWords fileContent words = return $ map (\w -> (w, map toLower w `elem` splitFile)) words where
    splitFile = split (map toLower fileContent) [' ', '\n', ',', '.']

split :: String -> [Char] -> [String]
split str seps = foldr splitOrConcat [""] str where
    splitOrConcat x (a:acc)
        | x `elem` seps = case a of
            "" -> a:acc
            _ -> "":a:acc
        | otherwise = (x:a):acc
