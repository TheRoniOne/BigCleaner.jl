using BigCleaner
using Documenter

DocMeta.setdocmeta!(BigCleaner, :DocTestSetup, :(using BigCleaner); recursive=true)

makedocs(;
    modules=[BigCleaner],
    authors="Ronald Gamez",
    repo="https://github.com/TheRoniOne/BigCleaner.jl/blob/{commit}{path}#{line}",
    sitename="BigCleaner.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://TheRoniOne.github.io/BigCleaner.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/TheRoniOne/BigCleaner.jl",
    devbranch="main",
)
