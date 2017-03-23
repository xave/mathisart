-- @MySubsite.hs
-- This is for the subsite's dispatch code.
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}

module MySubsite
    ( module MySubsite.Data
    , module MySubsite
    ) where

import            MySubsite.Data
import            Yesod


getSubHomeR :: Yesod master => HandlerT HelloSub (HandlerT master IO) Html
getSubHomeR = lift $ defaultLayout [whamlet|Welcome to the subsite!|]

instance Yesod master => YesodSubDispatch MySubsite (HandlerT master IO) where
    yesodSubDispatch = $(mkYesodSubDispatch resourceMySubsite)
