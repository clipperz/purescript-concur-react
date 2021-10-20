let mkPackage =
    -- https://raw.githubusercontent.com/purescript/package-sets/psc-0.13.0-20190626/src/mkPackage.dhall sha256:0b197efa1d397ace6eb46b243ff2d73a3da5638d8d0ac8473e8e4a8fc528cf57
    https://github.com/purescript/package-sets/releases/download/psc-0.14.2-20210713/packages.dhall sha256:654c3148cb995f642c73b4508d987d9896e2ad3ea1d325a1e826c034c0d3cd7b

let upstream =
    https://github.com/purescript/package-sets/releases/download/psc-0.14.2-20210713/packages.dhall sha256:654c3148cb995f642c73b4508d987d9896e2ad3ea1d325a1e826c034c0d3cd7b

let overrides = { concur-react = ./spago.dhall as Location }

let additions =
      { concur-core =
          mkPackage
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
            "https://github.com/purescript-concur/purescript-concur-core"
            "v0.4.2"
      }

in  upstream // overrides // additions
