# This file is a part of PlottingRecipes.jl, licensed under the MIT License (MIT).

function plot end
export plot

function plot! end
export plot!


abstract type AbstractFigure end
export AbstractFigure


function plotting_recipe! end
export plotting_recipe!
