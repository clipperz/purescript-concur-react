{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "concur-react"
, dependencies =
    [ "aff"
    , "arrays"
    , "console"
    , "concur-core"
    , "react"
    , "react-dom"
    , "web-dom"
    , "web-html"
	, "effect"
    , "either"
    , "exceptions"
    , "maybe"
    , "prelude"
    , "transformers"
    , "tuples"
    , "unsafe-coerce"
    , "web-events"
    ]
, license = "MIT"
, repository = "https://github.com/purescript-concur/purescript-concur-react"
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
