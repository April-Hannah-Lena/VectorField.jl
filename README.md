# VectorField

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://April-Hannah-Lena.github.io/VectorField.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://April-Hannah-Lena.github.io/VectorField.jl/dev)
[![Build Status](https://github.com/April-Hannah-Lena/VectorField.jl/workflows/CI/badge.svg)](https://github.com/April-Hannah-Lena/VectorField.jl/actions)
[![Coverage](https://codecov.io/gh/April-Hannah-Lena/VectorField.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/April-Hannah-Lena/VectorField.jl)

### Installation 

To install and run VectorField.jl, run in your REPL:

```julia
using Pkg
Pkg.add(https://github.com/April-Hannah-Lena/VectorField.jl.git)
```

### Usage

```julia
using VectorField.jl
```

This package serves just one purpose, which is to make `quiver()` from `Plots.jl` easier to use. All of the following are equivalent:

```julia
Df(x, y) = [-x, y]                      # vectorfield(x, y, f) takes two Vectors x, y with 
                                        # eltype Float as well as a Function f that takes 
vectorfield(-1:0.5:1, -1:0.5:1, Df)     # 2 arguments and returns a Vector of length 2. 
```

`vectorfield()` will interpolate a grid from the 2 Vectors x, y. It does this using 

```julia
meshgrid(-1:0.5:1, -1:0.5:1)
# meshgrid(x, y) creates a 2xd Array of all combinations of elements in x, y
# where d == length(x)*length(y)
```

Instead of a `Function`, `vectorfield()` can accept 2 matrices with eltype `Float` or one matrix with eltype `Array{Float,1}`. 

```julia
xs = ys = -1:0.5:1
u = [Df(x, y)[1] for x in xs, y in ys]
v = [Df(x, y)[2] for x in xs, y in ys]
# u, v are 2 matrices, the value of u[i, j] is the x component of the arrow, 
# the value of v[i, j] is the y component of the arrow, at the point [x[i], v[j]]
# Grid will be interpolated as:
#     y ⟶            y ⟶
# x                 x
# |    u            |    v   
# ↓            ,    ↓

vectorfield(xs, ys, u, v)
```

Alternatively, 

```julia
xs = ys = -1:0.5:1
uv = [Df(x, y) for x in xs, y in ys]
# uv is a matrix of 2-element arrays [x, y]. Arrows will be interpreted componentwise.
# Grid will be interpolated as:
#     y ⟶
# x
# |    uv  
# ↓   

vectorfield(xs, ys, uv)
```

This is my first package, made primarily out of necessity for my university work. Expect some bugs in more niche test cases, I'm still learning Julia :)