import Model exposing (..)

main = 
  Html.beginnerProgram { model = model, view = view, update = update }

model : AppModel
model = {}

update : AppMsg -> AppModel -> AppModel
update msg model =
  case msg of
    _ ->
      model

view : AppModel -> Html AppMsg
view model =
  div [] []