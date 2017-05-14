-- ELM external modules
import Html exposing (..)
import Window exposing (..)
import Task

-- Project modules
import Model exposing (..)
import Misc exposing (..)

main : Program Never AppModel AppMsg 
main = 
  Html.program { init = init, view = view, update = update, subscriptions = subscriptions }

init : (AppModel, Cmd AppMsg)
init = 
  ({
     window_height = 0
    ,window_width  = 0
    }, init_size)

init_size : Cmd AppMsg
init_size =
  Task.perform
    windowSizeToMsg -- If the Task succeed
    Window.size     -- The Task to run

update : AppMsg -> AppModel -> (AppModel, Cmd AppMsg)
update msg model =
  case msg of
    WindowNewSize height width ->
      ({model | window_height = height, window_width = width}, Cmd.none)

view : AppModel -> Html AppMsg
view model =
  div [] [ let msg = "Heigth:" ++ toString model.window_height ++ " " ++ "Width:" ++ toString model.window_width in text msg]

subscriptions : AppModel -> Sub AppMsg
subscriptions model =
  Window.resizes windowSizeToMsg