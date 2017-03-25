-- @MySubsite.hs
-- This is for the subsite's dispatch code.
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}

module Handler.MySubsite
    ( module MySubsite
    ) where

import            Import
--import            Yesod

getSubHomeR :: Yesod app => HandlerT MySubsite (HandlerT app IO) Html
getSubHomeR = lift $ defaultLayout [whamlet|Welcome to the subsite!|]

--instance Yesod master => YesodSubDispatch MySubsite (HandlerT master IO) where
--    yesodSubDispatch = $(mkYesodSubDispatch resourceMySubsite)
