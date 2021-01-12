# VectorField

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://April-Hannah-Lena.github.io/VectorField.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://April-Hannah-Lena.github.io/VectorField.jl/dev)
[![Build Status](https://github.com/April-Hannah-Lena/VectorField.jl/workflows/CI/badge.svg)](https://github.com/April-Hannah-Lena/VectorField.jl/actions)
[![Coverage](https://codecov.io/gh/April-Hannah-Lena/VectorField.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/April-Hannah-Lena/VectorField.jl)

### Installation 

To install and run VectorField.jl, run in your REPL:

'''julia
using Pkg
Pkg.add(https://github.com/April-Hannah-Lena/VectorField.jl.git)
'''

### Usage

This package serves just one purpose, which is to make 'quiver()' from 'Plots.jl' easier to use. 

'''julia
using VectorField

Df(x, y) = [-x, y]                      # vectorfield(x, y, f) takes two Vectors x, y with eltype Float
                                        # as well as a Function f that takes 2 arguments and returns
vectorfield(-1:0.5:1, -1:0.5:1, Df)     # a Vector of length 2. 
'''

'vectorfield()' will interpolate a grid from the 2 Vectors x, y. It does this using 

'''julia
meshgrid(-1:0.5:1, -1:0.5:1)
# meshgrid(x, y) creates a 2xd Array of all combinations of elements in x, y
'''

