The solution avoids processing the entire infinite list. We use `takeWhile` to create a finite sublist and apply the processing logic only to that.  This guarantees termination even for infinite input lists.

```haskell
import Data.Maybe (fromMaybe)

processList :: [Integer] -> Integer
processList xs = fromMaybe (-1) $ listToMaybe [x | x <- takeWhile (<= 20) xs, x > 10]  -- Process only a finite part of the list

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:_) = Just x

main :: IO ()
main = do
  let infiniteList = [1..]
  print (processList infiniteList) 
  let finiteList = [1..25]
  print (processList finiteList)
```