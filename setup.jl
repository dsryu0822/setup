using Pkg

lib_list =
 ["Distances", "NearestNeighbors", "DataFrames", "Graphs",
 "Profile", "Plots", "Statistics", "Random",
 "Distributions", "StatsBase", "LaTeXStrings",
 "StatsPlots", "Pluto",
 "JSON", "CSV", "XLSX"]

@time Pkg.add(string.(lib_list))

@time using Distances, NearestNeighbors, DataFrames, Graphs
@time using Profile, Plots, Statistics, Random
@time using Distributions, StatsBase, LaTeXStrings
@time using StatsPlots, Pluto
@time using JSON, CSV, XLSX
