module View exposing (..)

import Update
import Model
import Html
import Html.Events
import Html.Attributes
import EmojiConverter


view : Model.Model -> Html.Html Update.Msg
view model =
    Html.div
        []
        [ Html.node "link"
            [ Html.Attributes.rel "stylesheet"
            , Html.Attributes.href "stylesheets/main.css"
            ]
            []
        , Html.nav
            []
            [ Html.div
                [ Html.Attributes.class "nav-wrapper light-blue lighten-2" ]
                [ Html.div
                    [ Html.Attributes.class "brand-logo center" ]
                    [ Html.text "Elmoji Translator" ]
                ]
            ]
        , Html.section
            [ Html.Attributes.class "container" ]
            [ Html.div
                [ Html.Attributes.class "input-field" ]
                [ Html.input
                    [ Html.Attributes.type' "text"
                    , Html.Attributes.class "center"
                    , Html.Attributes.placeholder "Let's Translate!"
                    , Html.Events.onInput Update.SetCurrentText
                    ]
                    []
                ]
            , Html.p
                [ Html.Attributes.class "center output-text emoji-size" ]
                [ Html.text (translateText model)
                , Html.div
                    [ Html.Attributes.class "switch center" ]
                    [ Html.label []
                        [ Html.text "Translate Text"
                        , Html.input [ Html.Attributes.type' "checkbox" ] []
                        , Html.span [ Html.Attributes.class "lever" ] []
                        , Html.text "Translate Emoji"
                        ]
                    ]
                ]
            ]
        ]


translateText : Model.Model -> String
translateText model =
    EmojiConverter.textToEmoji Model.defaultKey model.currentText
