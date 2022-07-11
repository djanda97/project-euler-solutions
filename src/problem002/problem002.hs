-- problem002.hs
-- Project Euler Solution
-- Problem 2: Even Fibonacci numbers

main :: IO ()
main = print answer

answer :: Integer
answer = sum (filter even (takeWhile (< 4000000) fibonacci))

fibonacci :: [Integer]
fibonacci = scanl (+) 1 (1 : fibonacci)
