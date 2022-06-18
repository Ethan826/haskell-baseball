module Main where

import Count (Balls (..), Count (..), Strikes (..), reduceBalls, reduceCount)
import Data.Either (isLeft)
import Pitch (Pitch (..))
import Test.HUnit

startingCount :: Count
startingCount = Count {balls = BallZero, strikes = StrikeZero}

fullCount :: Count
fullCount = Count {balls = BallThree, strikes = StrikeTwo}

test1 =
  TestCase $
    assertEqual
      "Ball should increase balls"
      (reduceCount Ball startingCount)
      (Right $ Count {balls = BallOne, strikes = StrikeZero})

test2 =
  TestCase $
    assertEqual
      "Strike should increase strikes"
      (reduceCount SwingingStrike startingCount)
      (Right $ Count {balls = BallZero, strikes = StrikeOne})

test3 =
  TestCase $
    assertEqual
      "Foul on strike two should not change count"
      (reduceCount Foul fullCount)
      (Right $ Count {balls = BallThree, strikes = StrikeTwo})

test4 =
  TestCase $
    assertEqual
      "Ball on ball 3 should be a walk"
      (reduceCount Foul (Count {balls = BallZero, strikes = StrikeOne}))
      (Right $ Count {balls = BallZero, strikes = StrikeTwo})

tests :: Test
tests =
  TestList
    [test1, test2, test3]

main :: IO Counts
main = runTestTT tests
