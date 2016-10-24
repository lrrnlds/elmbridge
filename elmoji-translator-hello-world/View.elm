module View exposing (..)

import Update
import Model
import Html
import Html.Events
import Html.Attributes


view : Model.Model -> Html.Html Update.Msg
view model =
    let 
        color = 
            if model.backgroundClicked then
                "blue"
            else
                "red"

        style = Html.Attributes.style [("background-color", color)]
    in
    Html.div
        [ Html.Attributes.class "skeleton-elm-project" 
        , Html.Events.onClick Update.ChangeColor
        , style
        ]
        [ Html.node "link"
            [ Html.Attributes.rel "stylesheet"
            , Html.Attributes.href "stylesheets/main.css"
            ]
            []
        , Html.div
            [ Html.Attributes.class "waves-effect waves-light btn-large"
            , Html.Events.onDoubleClick Update.ChangeText
            ]
            [ Html.text model.buttonLabel ]
        ]
