module Muse( foldPracs ) where

import Prelude (class Show, show, (<>), bind, pure )
import Data.Foldable

data Embrace   = Embrace   { name::String }
data Innovate  = Innovate  { name::String }
data Encourage = Encourage { name::String }

data Learn     = Learn     { name::String }
data Do        = Do        { name::String }
data Share     = Share     { name::String }

instance showEmbrace :: Show Embrace where
  show ( Embrace { name:name } ) = "( Embrace "   <> show name <> " )"

instance showInnovate :: Show Innovate where
  show ( Innovate { name:name } ) = "( Innovate "   <> show name <> " )"

instance showEncourage :: Show Encourage where
  show ( Encourage { name:name } ) = "( Encourage " <> show name <> " )"

instance showLearn  :: Show Learn where
   show ( Learn { name:name } ) = "( Learn "    <> show name <> " )"

instance showDo :: Show Do where
  show ( Do { name:name } ) = "( Do "   <> show name <> " )"

instance showShare :: Show Share where
  show ( Share { name:name } ) = "( Share " <> show name <> " )"

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

json :: Info -> String
json (Collaborate col row ) = "( Collaborate " <> show col <> show row <> " )"
json (Product     col row ) = "( Product "     <> show col <> show row <> " )"
json (Discover    col row ) = "( Discover "    <> show col <> show row <> " )"
json (Adapt       col row ) = "( Adapt "       <> show col <> show row <> " )"
json (Technology  col row ) = "( Technology "  <> show col <> show row <> " )"
json (Benefit     col row ) = "( Benefit "     <> show col <> show row <> " )"
json (Change      col row ) = "( Change "      <> show col <> show row <> " )"
json (Deliver     col row ) = "( Deliver "     <> show col <> show row <> " )"
json (Govern      col row ) = "( Govern "      <> show col <> show row <> " )"

e11 :: Info
e11  = Collaborate col row where
  col  = Embrace { name:"Embrace" }
  row  = Learn   { name:"Learn"   }

e21 :: Info
e21  = Product col row where
  col  = Innovate { name:"Innovate" }
  row  = Learn    { name:"Learn"   }

e31 :: Info
e31  = Discover col row where
  col  = Encourage { name:"Encourage" }
  row  = Learn     { name:"Learn"   }

e12 :: Info
e12  = Adapt col row where
  col  = Embrace { name:"Embrace" }
  row  = Do      { name:"Do"      }

e22 :: Info
e22  = Technology col row where
  col  = Innovate { name:"Innovate" }
  row  = Do       { name:"Do"       }

e32 :: Info
e32  = Benefit col row where
  col  = Encourage { name:"Encourage" }
  row  = Do        { name:"Do"        }

e13 :: Info
e13  = Change col row where
  col  = Embrace { name:"Embrace" }
  row  = Share   { name:"Share"   }

e23 :: Info
e23  = Deliver col row where
  col  = Innovate { name:"Innovate" }
  row  = Share    { name:"Share"    }

e33 :: Info
e33  = Govern col row where
  col  = Encourage { name:"Encourage" }
  row  = Share     { name:"Share"     }

pracs :: Array Info
pracs = [e11,e21,e31,e12,e22,e32,e13,e23,e33]

jsonPracs :: Array Info -> Array String
jsonPracs ps = do
    prac <- ps
    let  prs = json prac
    pure prs

doPracs :: Array String
doPracs = jsonPracs pracs

foldPracs :: String
foldPracs = foldl (<>) "" doPracs

















