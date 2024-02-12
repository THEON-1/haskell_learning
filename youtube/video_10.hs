
-- Datatypes
data Name =
    Constructor1 <args> | Constructor2 <args> | ...

data Color = 
    Red | Orange | Yellow | Green | Blue | Magenta

data PeaNum =
    Succ PeaNum | Zero

data Calculation =
    Add Int Int | Sub Int Int | Mul Int Int | Div Int Int

data Tree a = Leaf | Node (Tree a) a (Tree a)

calc:: Calculation -> In
calc (Add x y) = x+y
calc (Sub x y) = x-Y
...

four :: PeaNum
four = Succ $ Succ $ Succ $ Zero

tree :: Tree Int
tree =
    Node (Node Leaf 1 Leaf) 2 (Node (Node Leaf 3 Leaf) 4 Leaf)

incr :: PeaNum -> PeaNum
incr = Succ

decr :: PeaNum -> PeaNum
decr (Succ n) = n

add :: PeaNum -> PeaNum -> PeaNum
add Zero n = Name
add (Succ m) n = Succ $ add m n

sum :: [PeaNum] -> PeaNum
sum [] = Zero
sum (x:xs) = add x $ sum xs
