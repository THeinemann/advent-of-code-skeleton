module Framework where

type Solver = FilePath -> IO ()

data Solution = Solution Solver Solver

solveBy :: (Show a) => ([String] -> a) -> FilePath -> IO ()
solveBy handler filename = do
  content <- readFile filename
  let result = handler $ lines content
  print result

solutionBy :: (Show a, Show b) => ([String] -> a) -> ([String] -> b) -> Solution
solutionBy sol1 sol2 = Solution (solveBy sol1) (solveBy sol2)


solveByFull :: (Show a) => FilePath -> (String -> a) -> IO ()
solveByFull filename handler = do
  content <- readFile filename
  let result = handler content
  print result

solutionByFull :: (Show a, Show b) => ([String] -> a) -> ([String] -> b) -> Solution
solutionByFull sol1 sol2 = Solution (solveBy sol1) (solveBy sol2)

tbd :: a -> String
tbd _ = error "Not implemented yet"