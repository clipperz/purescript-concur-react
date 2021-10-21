let mkPackage =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.4-20211005/packages.dhall sha256:2ec351f17be14b3f6421fbba36f4f01d1681e5c7f46e0c981465c4cf222de5be

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.4-20211005/packages.dhall sha256:2ec351f17be14b3f6421fbba36f4f01d1681e5c7f46e0c981465c4cf222de5be

let overrides = { concur-react = ./spago.dhall as Location }

let additions =
      { concur-core =
        { dependencies =
          [ "aff"
          , "arrays"
          , "avar"
          , "console"
          , "foldable-traversable"
          , "free"
          , "nonempty"
          , "profunctor-lenses"
          , "tailrec"
          ]
        , repo = "https://github.com/purescript-concur/purescript-concur-core"
        , version = "v0.4.2"
        }
      }

in  upstream // overrides // additions
