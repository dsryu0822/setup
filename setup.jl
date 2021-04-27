using Pkg

lib_list =
 ["NearestNeighbors", "DataFrames", "LightGraphs",
 "Profile", "Plots", "Statistics", "Random",
 "Distributions", "CSV", "StatsBase"]

@time Pkg.add(string.(lib_list))

@time using NearestNeighbors, DataFrames, LightGraphs
@time using Profile, Plots, Statistics, Random
@time using Distributions, CSV, StatsBase
