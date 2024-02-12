
-- Folding
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr (+) a [x1, x2, ... xn] = x1 + x2 + ... + xn + a

foldr (+) 0 [1, 2, 3, ... n] = 1+2+3+...+n +0
sum = foldr (+) 0
and foldr (&&) True
or foldr (||) False

count e = foldr (\x acc -> if e==x then acc+1 else acc) 0

isaAll e = foldr (\x -> (&&) $ e==x) True
isaAll e = foldr (\x acc -> r==x && acc) True

length = foldr (\x -> (+) 1) 0
length = foldr (const $ (+) 1) 0 
map f = foldr ((:) . f) []

