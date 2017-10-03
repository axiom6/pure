
module Proto where

import Prelude (class Show ) -- , show, (<>)
import Data.Generic (class Generic, gShow)

newtype MyName = MyName { name::String }

derive instance genericMyName :: Generic MyName

instance showMyName :: Show MyName where
  show = gShow

data Adt = Adt MyName

{-
instance showAdt  :: Show Adt where
  show Adt            = "( Adt " <> show "name?" <> " )"
  show ( Adt MyName ) = "( Adt " <> show MyName  <> " )"
-}