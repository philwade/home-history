module Main exposing (main)

import Html exposing (Html, div, text)

main = Html.program { init = init
                    , view = view
                    , update = update
                    , subscriptions = subscriptions
                    }

type alias Model = Int
type Msg = Increment

init : (Model, Cmd Msg)
init = (1, Cmd.none)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = (1, Cmd.none)

view : Model -> Html Msg
view model = div [] [ text "hello world" ]

subscriptions model = Sub.none
