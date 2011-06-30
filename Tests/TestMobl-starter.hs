{-# LANGUAGE ScopedTypeVariables #-}

module T where

import Mobl-starter
import Test.QuickCheck(property)

test_failing = foo == 1
prop_trivial = property (\(x::Integer) -> 1+x > x)

