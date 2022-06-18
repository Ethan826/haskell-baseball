module Main where

import Count (Balls (..), Strikes (..), incrementBalls, incrementStrikes)
import Test.HUnit

testIncrementBalls :: Test
testIncrementBalls =
  TestCase (assertEqual "testIncrementBalls" (incrementBalls BallZero) BallOne)

testIncrementalBallsBallThree :: Test
testIncrementalBallsBallThree =
  TestCase (assertEqual "testIncrementBallsBallThree" (incrementBalls BallThree) BallZero)

testIncrementStrikes :: Test
testIncrementStrikes =
  TestCase (assertEqual "testIncrementStrikes" (incrementStrikes StrikeOne) StrikeTwo)

testIncrementalStrikesStrikeTwo :: Test
testIncrementalStrikesStrikeTwo =
  TestCase (assertEqual "testIncrementStrikesBallThree" (incrementStrikes StrikeTwo) StrikeZero)

tests :: Test
tests =
  TestList
    [ testIncrementBalls
    , testIncrementalBallsBallThree
    , testIncrementStrikes
    , testIncrementalStrikesStrikeTwo
    ]

main :: IO Counts
main = runTestTT tests
