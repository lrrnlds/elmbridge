module Update exposing (..)

import Model


type Msg
    = ChangeText
    | ChangeColor


update : Msg -> Model.Model -> Model.Model
update msg model =
    case msg of
        ChangeText ->
            if model.buttonLabel == Model.initialText then
                { model | buttonLabel = "goodbye world!" }
            else
                { model | buttonLabel = Model.initialText }

        ChangeColor ->
            { model | backgroundClicked = True}