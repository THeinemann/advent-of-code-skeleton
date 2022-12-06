module TestDay1(testCases) where

import Test.HUnit

test1 :: Test
test1 = TestCase (assertEqual "Implement this" (42 :: Int) 43)

testCases :: Test
testCases = TestList [test1]
