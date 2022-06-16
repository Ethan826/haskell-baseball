module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"

data Position
  = Pitcher
  | Catcher
  | FirstBaseman
  | SecondBaseman
  | ThirdBaseman
  | Shortstop
  | LeftFielder
  | CenterFielder
  | RightFielder
  | DesignatedHitter
  | PinchHitter
  | PinchRunner
  deriving (Show)

data HomeVisitor
  = Home
  | Visitor
  deriving (Show)

data Pitch
  = CalledStrike
  | SwingingStrike
  deriving (Show)
