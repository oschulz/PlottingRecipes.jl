# This file is a part of PlottingRecipes.jl, licensed under the MIT License (MIT).

function plot end
export plot

function plot! end
export plot!


abstract type AbstractCanvas end

abstract type AbstractFigure <: AbstractCanvas end
export AbstractFigure


abstract type AbstractLegendSymbol <: AbstractCanvas end
export AbstractLegendSymbol



function plotting_recipe! end
export plotting_recipe!


function plot_impl end
function plot_impl! end


# global variables:
current_figure = nothing
current_engine = nothing


plot(args...) = plot_impl(current_engine, args...)

plot!(figure::AbstractFigure, args...) = plot_impl!(current_engine, figure, args...)
plot!(args...) = plot_impl!(current_engine, current_figure, args...)
