-- problem001.hs
-- Project Euler Solution
-- Problem 1: Multiples of 3 or 5

main :: IO ()
main = print $ answer 1000

numbersLessThan :: Int -> [Int]
numbersLessThan n = [1 .. n - 1]

isMultipleOfThreeOrFive :: Int -> Bool
isMultipleOfThreeOrFive n = (n `mod` 3 == 0) || (n `mod` 5 == 0)

answer :: Int -> Int
answer n = sum (filter isMultipleOfThreeOrFive (numbersLessThan n))
