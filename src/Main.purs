module Main where

import Prelude

import Effect.Class.Console (log)
import HTTPure as HTTPure
import HTTPure.Request (Request)
import HTTPure.Response (ResponseM)
import HTTPure.Server (ServerM)

router :: Request -> ResponseM
router _ = HTTPure.ok "This works"

port :: Int
port = 8080

main :: ServerM
main = HTTPure.serve port router
  $ log $ "Server up running on port: " <> show port