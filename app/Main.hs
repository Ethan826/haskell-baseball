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
  deriving (Show, Eq, Ord)

data HomeVisitor
  = Home
  | Visitor
  deriving (Show, Eq, Ord)

data BatterEvent
  = Single
  | Double
  | Triple
  | HomeRun
  | Error
  | FieldersChoice
  | FoulBallError
  | HitByPitch
  | Strikeout
  | NoPlay
  | IntentionalWalk

data NonBatterEvent
  = Balk
  | CaughtStealing
  | DefensiveIndifference
  | OtherAdvance
  | PassedBall
  | WildPitch
  | Pickoff
  | PickoffCaughtStealing
  | StolenBase
