module Doq.Consul (
        {-getRegisteredServices-}
        ) where

import Doq.Service (Service)

import Network.Wreq

getRegisteredServices :: Registrar -> Response [Service]
