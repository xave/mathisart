-- @MySubsite/Data.hs
-- {-# LANGUAGE Quasiquotes       #-}
-- {-# LANGUAGE TemplateHaskell   #-}
-- {-# LANGUAGE TypeFamilies      #-}

module MySubsite.Data where

import              Yesod

-- Subsites have foundations just like master sites
-- data MySubsite = MySubsite

-- We have a familiar analog from mkYesod, with just one extra parameter.
mkYesodSubData "MySubsite" [parseRoutes|
/ SubHomeR GET
|]
