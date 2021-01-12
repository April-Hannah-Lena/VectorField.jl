using VectorField
using Documenter

makedocs(;
    modules=[VectorField],
    authors="April Herwig",
    repo="https://github.com/April-Hannah-Lena/VectorField.jl/blob/{commit}{path}#L{line}",
    sitename="VectorField.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://April-Hannah-Lena.github.io/VectorField.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/April-Hannah-Lena/VectorField.jl",
)
