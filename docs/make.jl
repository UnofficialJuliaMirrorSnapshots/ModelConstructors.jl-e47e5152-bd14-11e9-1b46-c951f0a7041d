using Documenter, ModelConstructors

makedocs(modules = [ModelConstructors],
         clean = false,
         format = Documenter.HTML(),
         sitename = "ModelConstructors.jl",
         authors = "FRBNY-DSGE",
         linkcheck = false,
         strict = false,
         pages = Any[
                     "Home"                                 => "index.md",
                     "Model Design"                         => "model_design.md",
                     "Creating Models"                      => "example_model.md",
                     "Implementation Details"               =>  "implementation_details.md",
                     "Contributing to ModelConstructors.jl" => "contributing.md",
                     "License"                              => "license.md"
         ],
         doctest = false # for now
)

deploydocs(
    repo = "github.com/FRBNY-DSGE/ModelConstructors.jl.git",
    target = "build",
    deps = nothing,
    devbranch = "master",
    branch = "gh-pages",
    # versions = "v#",
    # julia = "0.7",
    # osname = "osx",
    make = nothing
)
