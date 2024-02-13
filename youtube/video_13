
(+) :: Num a => a -> a -> a

sum :: Num p => [p] -> p
sum [] = 0
sum (x:xs) = x + sum xs

ghci> :info Num
Num, Show, Eq, Ord

data Temperature = C Float | F Float

instance Eq Temperature where
    (==) (C n) (C m) = n == m
    (==) (F n) (F m) = n == m
    (==) (C c) (F f) = (1.8*c + 32) == f
    (==) (F f) (C c) = (1.8*c + 32) == f

data Temperature C Float | F Float
    deriving (Show, Eq)

->
    (==) (C n) (C m) = n == m
    (==) (F n) (F m) = n == m
    (==) _ _ = False
