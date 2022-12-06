module Main (main) where

import Framework(Solution(Solution), Solver)
import qualified Day1
import System.Environment (getArgs)


-- Add new solutions here.
-- Because command line arguments are called as string, this function accepts a String param, so we can skip parsing them
findSolution :: String -> Solution
findSolution "1" = Day1.solution
findSolution other = error $ "No solution for day " ++ other ++ " yet :("

-- No changes should be necessary here, because we only have two parts
-- Because command line arguments are called as string, this function accepts a String param, so we can skip parsing them
puzzle :: String -> Solution -> Solver
puzzle "1" (Solution s _) = s
puzzle "2" (Solution _ s) = s
puzzle other _ = error $ "Invalid puzzle " ++ other ++ " (valid values are only 1 or 2)"


main :: IO ()
main = do
  dayString : partString : _ <- getArgs
  let solution = findSolution dayString
  let solver = puzzle partString solution
  let filename = "inputs/day" ++ dayString
  solver filename
