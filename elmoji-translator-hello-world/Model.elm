module Model exposing (..)


type alias Model =
    { buttonLabel : String 
    , backgroundClicked : Bool
    }


init : Model
init =
    { buttonLabel = initialText 
    , backgroundClicked = False
    }

initialText : String
initialText = "hello world!"