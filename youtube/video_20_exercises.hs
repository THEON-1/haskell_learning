import Data.List hiding (insert)
import Test.QuickCheck

data Tree a = Leaf | Node (Tree a) a (Tree a)
    deriving Show

-- ex 1
infTree :: Tree (Integer , Integer)
infTree = aux 0 0 where
    aux x y = Node (aux (x+1) y) (x, y) (aux x (y+1))

cut :: Integer -> Tree a -> Tree a
cut 0 _ = Leaf
-- cut n Leaf = Leaf
cut i (Node l n r) = Node (cut (i-1) l) n (cut (i-1) r)

--ex 2
insert :: (Ord a) => a -> Tree a -> Tree a
insert v Leaf = Node Leaf v Leaf
insert v (Node l n r)
    | v < n = Node (insert v l) n r
    | v > n = Node l n (insert v r)
    | otherwise = Node l n r

inorder :: Tree a -> [a]
inorder tree = aux tree [] where
    aux Leaf xs = xs
    aux (Node l n r) xs = aux l (n:aux r xs)

testtree :: Tree Integer
testtree = insert 1 $ insert 3 $ insert 6 $ insert 2 $ insert 5 $ insert 4 Leaf

treeIsSortedProp :: [Int] -> Bool
treeIsSortedProp xs = isSorted $ inorder $ insertAll xs where
    insertAll [] = Leaf
    insertAll [x] = insert x Leaf
    insertAll (x:xs) = insert x $ insertAll xs
    isSorted [] = True
    isSorted [_] = True
    isSorted (x:y:xs) = x <= y && isSorted (y:xs)
