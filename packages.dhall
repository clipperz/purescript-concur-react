let mkPackage =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.2-20220630/packages.dhall
        sha256:691aff166010760f18ab1f4842ba6184f43747756e00579a050a2a46fa22d014

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.2-20220630/packages.dhall
        sha256:691aff166010760f18ab1f4842ba6184f43747756e00579a050a2a46fa22d014

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
