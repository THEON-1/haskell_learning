
-- Currying
f :: a -> b -> c -> d
f :: a -> (b -> (c -> d))

add :: Int -> Int -> Int
add x y = x+y
add x = (\x -> x+y)
add = (\x -> (\y -> x+y))

-- Partial Function Application
add 1 :: Int -> Int => (\y -> 1+y)

doublelist = map (\x -> 2*x)
