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
  = Ball
  | CalledStrike
  | Foul
  | HitBatter
  | IntentionalBall
  | StrikeUnknown
  | FoulBunt
  | MissedBuntAttempt
  | NoPitch
  | FoulTipOnBunt
  | Pitchout
  | SwingingOnPitchout
  | FoulBallOnPitchout
  | SwingingStrike
  | FoulTip
  | UnknownPitch
  | BallPitcherWentToMouth
  | BallInPlayByBatter
  | BallInPlayOnPitchout
  deriving (Show)

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
