module StateSpec where

import           Test.Hspec

spec :: Spec
spec = do
  describe "testing the test suite" $ do
    it "is successful" $
      1 `shouldBe` 1
