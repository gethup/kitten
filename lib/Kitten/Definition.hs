{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveTraversable #-}

module Kitten.Definition where

import Data.Foldable (Foldable)
import Data.Text (Text)
import Data.Traversable (Traversable)

import Kitten.Annotation
import Kitten.Location
import Kitten.Operator
import Kitten.Type

data Def a = Def
  { defAnno :: !Anno
  , defFixity :: !Fixity
  , defLocation :: !Location
  , defName :: !Text
  , defTerm :: !(Scheme a)
  } deriving (Eq, Foldable, Functor, Show, Traversable)