module Model exposing (..)

type alias AppModel = 
  {
   window_height : Int
  ,window_width  : Int
  }

type AppMsg 
  = WindowNewSize Int Int