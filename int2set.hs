
class Nested a
instance (Nested a) => Nested [a]

int2set :: (Eq t, Num t) => t -> Nested Int
int2set 0 = []
--int2set n = [int2set (n-1), [int2set (n-1)]]