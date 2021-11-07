using Pkg

lib_list =
 ["NearestNeighbors", "DataFrames", "Graphs",
 "Profile", "Plots", "Statistics", "Random",
 "Distributions", "CSV", "StatsBase", "LaTeXStrings"]

@time Pkg.add(string.(lib_list))

@time using NearestNeighbors, DataFrames, Graphs
@time using Profile, Plots, Statistics, Random
@time using Distributions, CSV, StatsBase, LaTeXStrings
