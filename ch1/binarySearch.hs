module BinarySearchFilter where

binarySearch :: Ord a => a -> [a] -> Bool
binarySearch _ [] = False 
binarySearch k xs
  | k == midEl = True 
  | k > midEl = binarySearch k $ drop (mid + 1) xs
  | otherwise = binarySearch k $ take mid xs
    where
      mid = length xs `div` 2 
      midEl = xs !! mid