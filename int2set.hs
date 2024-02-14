
newtype Nested = Nested {
    contains :: [Nested]
    }

instance Show Nested where
    show :: Nested -> String
    show (Nested n) = show n

intSet :: [Nested]
intSet = Nested []:map (\x -> Nested (x : contains x)) intSet
