let mkPackage =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220110/packages.dhall sha256:8dbf71bfc6c7a11043619eebe90ff85f7d884541048aa8cc48eef1ee781cbc0e

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.5-20220110/packages.dhall sha256:8dbf71bfc6c7a11043619eebe90ff85f7d884541048aa8cc48eef1ee781cbc0e

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
