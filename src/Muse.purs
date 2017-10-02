module Muse( Info ) where

--| import Prelude
--| import Data.String

type Embrace   = String
type Innovate  = String
type Encourage = String

type Learn     = String
type Do        = String
type Share     = String

data Col   = Embrace | Innovate  | Encourage
data Row   = Learn   | Do        | Share

data Info
  = Collaborate Embrace Learn | Product    Innovate Learn | Discover   Encourage Learn
  | Adapt       Embrace Do    | Technology Innovate Do    | Benefit    Encourage Do
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

info::  Info

json :: Info -> String
json (Collaborate c r ) = "Collaborate"
json (Product     c r ) = "Product"
json (Discover    c r ) = "Discover"
json (Adapt       c r ) = "Adapt"
json (Technology  c r ) = "Technology"
json (Benefit     c r ) = "Benefit"
json (Change      c r ) = "Change"
json (Deliver     c r ) = "Deliver"
json (Govern      c r ) = "Govern"



class PracticeC row col
class PracticeC row col <= Collab col row

type  PracticeT = { col::Col, row::Row }



