import Prelude hiding (elem)

-- ex 1
elem :: (Eq a) => a -> [a] -> Bool
elem a [] = False
elem a (x:xs)
    | a == x = True
    | otherwise = elem a xs
-- elem _ [] = False
-- elem a (x:xs) = (a == x) || (elem e xs)

-- ex 2
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
    | x `elem` xs = nub xs
    | otherwise = x : nub xs

-- ex 3
isAsc  :: [Int] -> Bool
isAsc [] = True
isAsc [_] = True
isAsc (x:y:xs)
    | x <= y = isAsc (y:xs)
    | otherwise = False
-- isAsc (x:y:xs) = (x >= y) && isAsc (y:xs)

-- ex 4
hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] _ _ = False
-- hasPath [] a b = a == b
hasPath [(x, y)] a b = a == x && b == y
hasPath xs a b =
    let l2 = [t | t <- xs , fst t == a]
    in or [ (snd v) == b || (hasPath [u | u <- xs, u /= v] (snd v) b) | v <- l2]
-- hasPath xs x y
--  | x == y = True
--  | otherwise =
--   let xs' = [(n, m) | (n, m) <- xs, n /= x] in
--   or [hasPath xs' m y | (n, m) <- xs, n == x]
