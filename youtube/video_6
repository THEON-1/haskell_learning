
app :: (a -> b) -> a -> b
app f x = f x

add1 :: Int -> Int
add1 x = x+1
app add1 1 => 2

-- Anonymous Functions
(\<args> -> <expr>)
add1 = (\x -> x+1)
(\x y z -> x+y+z)
(\x -> x+1) 1 => 2
(\x y z -> x+y+z) 1 2 3 => 6

app (\x -> x+1) 1 => 2

map :: ((a -> b) -> [a] -> [b])
map (\x -> x+1) [1, 2, 3] => [2, 3, 4]

filter :: (a -> Bool) -> [a] -> [a]
filter (\x -> x > 2) [1, 2, 3, 4, 5] => [3, 4, 5]
