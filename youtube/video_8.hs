
-- Composition
(.) :: (b -> c) -> (a -> b) -> a -> c
(f . g) equiv. to (\x -> f (g x))

descSort = reverse . sort

map2D :: (a -> b) -> [[a]] -> [[b]]
map2D = map . map

map2D = (\f1 xs -> map f1 xs) . (\f2 ys -> map f2 ys)
map2D = (x -> (\f1 xs -> map f1 xs) ((\f2 ys -> map f2 ys) x))
map2D = (x -> (\f1 xs -> map f1 xs) (ys -> map x ys))
map2D = (x -> (\xs -> map (ys -> map x ys) xs))
map2D x = (\xs -> map (ys -> map x ys) xs)
map2D f xs = map (ys -> map f ys) xs

-- Dollar Sign
($) :: (a -> b) -> a -> b
f xs = map (\x -> x+1) (filter (\x -> x>1) xs)
f xs = map (\x -> x+1) $ filter (\x -> x>1) xs
