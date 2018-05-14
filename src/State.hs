{-# LANGUAGE InstanceSigs #-}

module State where

import Test.QuickCheck (Arbitrary(..), Gen)

newtype State s a = State { runState :: s -> (a, s) }

instance Show (State s a) where
  show :: State s a -> String
  show _ = "State s a"

instance Functor (State s) where
  fmap :: (a -> b) -> State s a -> State s b
  fmap f (State f') = State $ \s -> let (a, s') = f' s
                                    in (f a, s')

-- TESTING
instance (Monoid a) => Arbitrary (State s a) where
  arbitrary :: Gen (State s a)
  arbitrary = return $ State (\s -> (mempty, s))
