module Misc exposing (..)

-- ELM external modules
import Window exposing (..)

-- Project modules
import Model exposing (..)

windowSizeToMsg : Window.Size -> AppMsg
windowSizeToMsg size =
  WindowNewSize size.width size.height