module Bird.BirdRouter(
  BirdRouter
, responseBody
) where

import Control.Monad.State
import Control.Monad.Reader
import Bird.Reply
import Bird.Request

type BirdRouter = StateT Reply IO

responseBody b = do
  reply <- get
  put $ reply { replyBody = b }

--responseStatus code reply = (reply { replyStatus = code }, ())
--param paramName request = lookup paramName $ params request