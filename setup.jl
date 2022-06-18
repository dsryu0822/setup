using Pkg

lib_list =
 ["Distances", "NearestNeighbors", "BoundingSphere", "DataFrames", "Graphs",
 "Profile", "Plots", "Statistics", "Random",
 "Distributions", "StatsBase", "LaTeXStrings",
 "StatsPlots", "Pluto",
 "JSON", "CSV", "XLSX", "JLD",
 "Crayons"
]

@time Pkg.add(string.(lib_list))

@time using Distances, NearestNeighbors, BoundingSphere, DataFrames, Graphs
@time using Profile, Plots, Statistics, Random
@time using Distributions, StatsBase, LaTeXStrings
@time using StatsPlots, Pluto
@time using Crayons
@time using JSON, CSV, XLSX, JLD
