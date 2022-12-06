
import Test.HUnit

import TestDay1

allTests :: [Test]
allTests = [ TestDay1.testCases ]

main :: IO ()
main = runTestTT (TestList allTests) >> pure ()
