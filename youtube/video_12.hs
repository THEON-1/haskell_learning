
-- Records
data Person = Person Sring Int

data Persin = Person {
    name :: String,
    age :: Int
}

greet :: Person  -> [Char]
greet person = "Hi " ++ name person
greet (Person n _) = "Hi " ++ n

data Point =
        D2 {x :: Int, y :: Int}
      | D3 {x :: Int, y :: Int, z :: Int}


