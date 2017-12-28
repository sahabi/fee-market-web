{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Home where

import Import
import Yesod.Form.Bootstrap3 (BootstrapFormLayout (..), renderBootstrap3)
import Text.Julius (RawJS (..))

-- This is a handler function for the GET request method on the HomeR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
getHomeR :: Handler Html
getHomeR = do
    let handlerName = "getHomeR" :: Text

    defaultLayout $ do
      addScript $ StaticR js_2h_js
      aDomId <- newIdent
      setTitle "Welcome To Fee Market!"
      $(widgetFile "homepage")

postHomeR :: Handler Html
postHomeR = do
    let handlerName = "postHomeR" :: Text

    defaultLayout $ do
        aDomId <- newIdent
        setTitle "Welcome To Yesod!"
        $(widgetFile "homepage")
