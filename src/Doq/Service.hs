{-# LANGUAGE DeriveGeneric #-}
module Doq.Service where

import Data.Aeson
import Data.Text

import GHC.Generics

import Network.Wreq

data Service = Service {
    id :: Text,
    service :: Text,
    tags :: [Text],
    address :: Text,
    port :: Int
    } deriving (Generic, Show) 


instance FromJSON Service

instance ToJSON Service where
    toEncoding = genericToEncoding defaultOptions

getMappings :: Service -> Response a
getMappings service = do
    response <- get $ Doq.Service.id service
    response
