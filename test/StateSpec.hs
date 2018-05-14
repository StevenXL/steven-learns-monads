module StateSpec where

import           Test.Hspec              (Spec, describe, it)
import           Test.Hspec.Checkers     (testBatch)
import           Test.QuickCheck         (property)
import           Test.QuickCheck.Classes (functor)
import State

trigger :: State a (String, Int, Bool)
trigger = undefined

spec :: Spec
spec = describe "Functor instance" $ testBatch (functor trigger)
