module Muse where

import Prelude
import Data.Generic.Rep.Generic

class Info
class Know
class Wise

class Embrace
class Innovate
class Encourage

class Learn
class Do
class Share

data Col   = Embrace | Innovate  | Encourage
data Row   = Learn   | Do        | Share

data Info
  = Collaborate Embrace Learn | Product    Innovate Learn | Discover   Encourage Learn
  | Adapt       Embrace Do    | Techology  Innovate Do    | Benefit    Encourage Do
  | Change      Embrace Share | Deliver    Innovate Share | Govern     Encourage Share

data Augm
  = Engage      Embrace Learn | Domain     Innovate Learn | Insight    Encourage Learn
  | Guide       Embrace Do    | Machine    Innovate Do    | Advise     Encourage Do
  | Prove       Embrace Share | Interpret  Innovate Share | Explain    Encourage Share

data Know
  = Expert      Embrace Learn | Research   Innovate Learn | Understand Encourage Learn
  | Orchestrate Embrace Do    | Cognition  Innovate Do    | Reason     Encourage Do
  | Evolve      Embrace Share | Educate    Innovate Share | Profess    Encourage Share

data Wise
  = Trust       Embrace Learn | Create     Innovate Learn | Truth      Encourage Learn
  | Aware       Embrace Do    | Conscience Innovate Do    | Complex    Encourage Do
  | Emerge      Embrace Share | Inspire    Innovate Share | Actualize  Encourage Share

data Plane = Info | Know | Augm | Wise

data Practice = Practice { plane::Plane, col::Col, row::Row }

instance showPractice :: Show Practice where
  show = generic Show

-- | This is stupid
-- | 00showPractice :: Practice -> String
-- | showPractice p = show p.plane <> show p.col <> show p.row

