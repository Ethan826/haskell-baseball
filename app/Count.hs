module Count where

import Main (Pitch (..))

data Balls
  = BallZero
  | BallOne
  | BallTwo
  | BallThree
  | Walk
  deriving (Show, Eq, Ord, Enum, Bounded)

incrementBalls :: Balls -> Either String Balls
incrementBalls Walk = Left "Can't increment walk"
incrementBalls b = pure $ succ b

reduceBalls :: Pitch -> Balls -> Either String Balls
reduceBalls p = case p of
  Ball -> incrementBalls
  IntentionalBall -> incrementBalls
  BallPitcherWentToMouth -> incrementBalls
  BallInPlayByBatter -> incrementBalls
  BallInPlayOnPitchout -> incrementBalls
  _ -> pure

data Strikes
  = StrikeZero
  | StrikeOne
  | StrikeTwo
  | Strikeout
  deriving (Show, Eq, Ord, Enum, Bounded)

incrementStrikes :: Strikes -> Either String Strikes
incrementStrikes Strikeout = Left "Can't increment strikeout"
incrementStrikes s = pure $ succ s

incrementStrikesOnFoul :: Strikes -> Either String Strikes
incrementStrikesOnFoul StrikeTwo = pure StrikeTwo
incrementStrikesOnFoul s = incrementStrikes s

reduceStrikes :: Pitch -> Strikes -> Either String Strikes
reduceStrikes p = case p of
  CalledStrike -> incrementStrikes
  StrikeUnknown -> incrementStrikes
  MissedBuntAttempt -> incrementStrikes
  FoulBunt -> incrementStrikes
  SwingingOnPitchout -> incrementStrikes
  FoulTipOnBunt -> incrementStrikes
  SwingingStrike -> incrementStrikes
  Foul -> incrementStrikesOnFoul
  FoulBallOnPitchout -> incrementStrikesOnFoul
  FoulTip -> incrementStrikesOnFoul
  _ -> pure

data Count = Count
  { balls :: Balls
  , strikes :: Strikes
  }
