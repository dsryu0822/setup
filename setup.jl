using Pkg

lib_list =
 ["Distances", "NearestNeighbors", "BoundingSphere", "DataFrames", "Graphs",
 "Profile", "Plots", "Statistics", "Random",
 "Distributions", "StatsBase", "LaTeXStrings", "GLM",
 "StatsPlots", "Pluto",
 "JSON", "CSV", "XLSX", "JLD2",
 "Crayons", "SMTPClient"
]

@time Pkg.add(string.(lib_list))
@time Pkg.instantiate()
 
# @time using Distances, NearestNeighbors, BoundingSphere, DataFrames, Graphs
# @time using Profile, Plots, Statistics, Random
# @time using Distributions, StatsBase, LaTeXStrings, GLM
# @time using StatsPlots, Pluto
# @time using JSON, CSV, XLSX, JLD2
# @time using Crayons, SMTPClient
