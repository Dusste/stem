module Route.Index exposing (ActionData, Data, Model, Msg, route)

import BackendTask exposing (BackendTask)
import FatalError exposing (FatalError)
import Head
import Head.Seo as Seo
import Html
import Html.Attributes as HA
import Pages.Url
import PagesMsg exposing (PagesMsg)
import Route
import RouteBuilder exposing (App, StatelessRoute)
import Shared
import UrlPath
import View exposing (View)


type alias Model =
    {}


type alias Msg =
    ()


type alias RouteParams =
    {}


type alias Data =
    { message : String
    }


type alias ActionData =
    {}


route : StatelessRoute RouteParams Data ActionData
route =
    RouteBuilder.single
        { head = head
        , data = data
        }
        |> RouteBuilder.buildNoState { view = view }


data : BackendTask FatalError Data
data =
    BackendTask.succeed Data
        |> BackendTask.andMap
            (BackendTask.succeed "Hello!")


head :
    App Data ActionData RouteParams
    -> List Head.Tag
head app =
    Seo.summary
        { canonicalUrlOverride = Nothing
        , siteName = "elm-pages"
        , image =
            { url =
                [ "images", "icon-png.png" ]
                    |> UrlPath.join
                    |> Pages.Url.fromPath
            , alt = "elm-pages logo"
            , dimensions = Nothing
            , mimeType = Nothing
            }
        , description = ""
        , locale = Nothing
        , title = "STEM"
        }
        |> Seo.website


view :
    App Data ActionData RouteParams
    -> Shared.Model
    -> View (PagesMsg Msg)
view app shared =
    { title = "STEM"
    , body =
        [ Html.div
            [ HA.class "flex" ]
            [ Html.div
                [ HA.class "flex flex-col" ]
                [ Html.h1
                    [ HA.class "mb-4 text-4xl" ]
                    [ Html.text "Welcome to STEM !" ]
                , Html.div
                    [ HA.class "flex flex-col mt-8" ]
                    [ Html.div
                        [ HA.class "flex gap-2 mb-2" ]
                        [ Html.img [ HA.class "w-[200px]", HA.src "/public/img.png" ] []
                        , Html.img [ HA.class "w-[200px]", HA.src "/public/img.png" ] []
                        , Html.img [ HA.class "w-[200px]", HA.src "/public/img.png" ] []
                        ]
                    , Html.h3
                        [ HA.class "text-2xl mb-2" ]
                        [ Html.text "Brutal new techique of doing stuff !" ]
                    , Html.p
                        [ HA.class "" ]
                        [ Html.text "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean \n            vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,\n\n" ]
                    ]
                ]
            , Html.div
                [ HA.class "bg-gray-300 flex flex-col min-w-[250px] px-4 py-2" ]
                [ Html.h3
                    [ HA.class "mb-4 font-semibold" ]
                    [ Html.text "Features" ]
                , Html.div
                    [ HA.class "flex" ]
                    [ Html.div
                        [ HA.class "flex flex-col" ]
                        [ Html.div
                            [ HA.class "py-2" ]
                            [ Html.h4
                                [ HA.class "font-semibold" ]
                                [ Html.text "Some nice article text" ]
                            , Html.div
                                [ HA.class "flex border border-black border-t-0 border-r-0 border-l-0 py-2" ]
                                [ Html.p [ HA.class "text-s leading-4 pr-1" ] [ Html.text "You might be interested in this hot topic, its so awesome you will shit your pants !" ]
                                , Html.img [ HA.class "w-[100px]", HA.src "/public/img.png" ] []
                                ]
                            ]
                        , Html.div
                            [ HA.class "py-2" ]
                            [ Html.h4
                                [ HA.class "font-semibold" ]
                                [ Html.text "Some nice article text" ]
                            , Html.div
                                [ HA.class "flex border border-black border-t-0 border-r-0 border-l-0 py-2" ]
                                [ Html.p [ HA.class "text-s leading-4 pr-1" ] [ Html.text "You might be interested in this hot topic, its so awesome you will shit your pants !" ]
                                , Html.img [ HA.class "w-[100px]", HA.src "/public/img.png" ] []
                                ]
                            ]
                        , Html.div
                            [ HA.class "py-2" ]
                            [ Html.h4
                                [ HA.class "font-semibold" ]
                                [ Html.text "Some nice article text" ]
                            , Html.div
                                [ HA.class "flex border border-black border-t-0 border-r-0 border-l-0 py-2" ]
                                [ Html.p [ HA.class "text-s leading-4 pr-1" ] [ Html.text "You might be interested in this hot topic, its so awesome you will shit your pants !" ]
                                , Html.img [ HA.class "w-[100px]", HA.src "/public/img.png" ] []
                                ]
                            ]
                        , Html.div
                            [ HA.class "py-2" ]
                            [ Html.h4
                                [ HA.class "font-semibold" ]
                                [ Html.text "Some nice article text" ]
                            , Html.div
                                [ HA.class "flex border border-black border-t-0 border-r-0 border-l-0 py-2" ]
                                [ Html.p [ HA.class "text-s leading-4 pr-1" ] [ Html.text "You might be interested in this hot topic, its so awesome you will shit your pants !" ]
                                , Html.img [ HA.class "w-[100px]", HA.src "/public/img.png" ] []
                                ]
                            ]
                        ]
                    ]
                ]
            ]

        -- , Html.p
        --     []
        --     [ Html.text <| "The message is: " ++ app.data.message ]
        -- , Route.Blog__Slug_ { slug = "hello" }
        --     |> Route.link [] [ Html.text "My blog post" ]
        ]
    }
