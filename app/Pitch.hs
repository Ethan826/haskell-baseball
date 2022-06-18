module Pitch where

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
  deriving (Show, Eq, Ord)
