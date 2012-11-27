-- Problem 4
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + (myLength xs)


-- Problem 3
elementAt :: [a] -> Int -> a
elementAt x y = x !! (pred y)

elementAt' (x:_) 1 = x
elementAt' (_:x) n = elementAt' x (n - 1)

-- Problem 2
myButLast :: [a] -> a
myButLast [] = error "too short!"
myButLast [x] = error "too short!"
myButLast (x:_:[]) = x
myButLast (_:xs) = myButLast xs
