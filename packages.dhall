let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.4-20221107/packages.dhall
        sha256:cd0c29e8a69cf70b714ce3ee91c57c02b3d20a1118e35dd8405f33aa80177849

in upstream
  with concur-core =
    { dependencies =
        [ "aff"
        , "aff-bus"
        , "arrays"
        , "avar"
        , "console"
        , "control"
        , "datetime"
        , "effect"
        , "either"
        , "exceptions"
        , "foldable-traversable"
        , "free"
        , "identity"
        , "lazy"
        , "maybe"
        , "newtype"
        , "parallel"
        , "prelude"
        , "profunctor-lenses"
        , "tailrec"
        , "transformers"
        , "tuples"
        ]
    , repo = "https://github.com/clipperz/purescript-concur-core"
    , version = "clipperz"
    }

