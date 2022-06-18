module Count where

incrementBalls :: Balls -> Balls
incrementBalls BallThree = BallZero
incrementBalls balls = succ balls

data Balls
  = BallZero
  | BallOne
  | BallTwo
  | BallThree
  deriving (Show, Eq, Ord, Bounded, Enum)

data Strikes
  = StrikeZero
  | StrikeOne
  | StrikeTwo
  deriving (Show, Eq, Ord, Enum)

incrementStrikes :: Strikes -> Strikes
incrementStrikes StrikeTwo = StrikeZero
incrementStrikes strikes = succ strikes

data Count = Count
  { balls :: Balls
  , strikes :: Strikes
  }
