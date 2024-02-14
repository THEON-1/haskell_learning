{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Avoid lambda" #-}
{-# HLINT ignore "Use sum" #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# HLINT ignore "Use product" #-}

-- ex 1
rev :: [a] -> [a]
rev = foldl (\acc x -> x:acc) []
-- rev = foldl (flip (:)) []

-- ex 2
prefixes :: [a] -> [[a]]
prefixes = foldr (\x acc -> map (x:) ([]:acc)) []
-- prefixes = foldr (\x acc -> [x] : (map ((:) x) acc)) []

-- ex 3
lagrange :: [(Float, Float)] -> Float -> Float
lagrange ps x = foldl (+) 0 [(yj*(l xj)) | (xj, yj) <- ps] where
    l xj = foldl (*) 1 [((x - (fst p)) / (xj - (fst p))) | p <- ps, fst p /= xj]

-- ex 4
data Trie a = Leaf a | Node a [Trie a]
foldtrie :: (b -> a -> b) -> b -> Trie a -> b
foldtrie f acc (Leaf n) =  f acc n
foldtrie f acc (Node n trie) = foldl (\acc x -> foldtrie f acc x) (f acc n) trie
-- foldtrie f acc (Node n trie) = foldl (foldtrie f) (f acc n) trie
