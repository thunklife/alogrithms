module Euclid where

  -- get the greatest common divisor of two integers

  euclid :: Int -> Int -> Int
  euclid p 0 = p
  euclid p q = euclid q (p `rem` q)