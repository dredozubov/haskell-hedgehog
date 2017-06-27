module Hedgehog.Internal.Opaque (
    Opaque(..)
  ) where


-- | Opaque values.
--
--   Useful if you want to put something without a 'Show' instance inside
--   something which you'd like to be able to display.
--
--   For example:
--
-- @
--   data Ref v =
--     Ref (v (Opaque (IORef Int)))
-- @
--
newtype Opaque a =
  Opaque {
      unOpaque :: a
    } deriving (Eq, Ord)

instance Show (Opaque a) where
  showsPrec _ (Opaque _) =
    showString "Opaque"
