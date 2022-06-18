module Main where

-- The rules use "Home Base" and "Home Plate"; Rule 2.02 calls it "Home Base".
data Base
  = FirstBase
  | SecondBase
  | ThirdBase
  | HomeBase
  deriving (Show, Eq)

data Fielder
  = Pitcher
  | Catcher
  | FirstBaseman
  | SecondBaseman
  | ThirdBaseman
  | Shortstop
  | LeftFielder
  | CenterFielder
  | RightFielder
  deriving (Show, Eq)

-- Rule 5.05(c): A batter has legally completed his time at bat when he is put
-- out or becomes a runner
data OffensivePlayer
  = Batter {balls :: Int, strikes :: Int}
  | Baserunner Base
  | Out
  deriving (Show, Eq)

data Intentional = Intentional

-- Rule 5.05(a)
data AtBatEndingEvent
  = FairBall
  | DroppedThirdStrike
  | HitByPitch
  | Walk (Maybe Intentional)
  | Strikeout
  | DefensiveInterference Fielder

main :: IO ()
main = do
  putStrLn "Hello world"
