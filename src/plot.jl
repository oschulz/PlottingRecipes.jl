# This file is a part of PlottingRecipes.jl, licensed under the MIT License (MIT).

function plot end
export plot

function plot! end
export plot!


function create_figure end


abstract type AbstractFigure end



"""
    abstract type PlottingEngine end

Must implement:

* `create_figure(engine::PlottingEngine)::AbstractFigure`
"""

abstract type PlottingEngine end
