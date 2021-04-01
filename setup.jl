using Pkg

lib_list =
 ["NearestNeighbors", "DataFrames", "LightGraphs",
 "Profile", "Plots", "Statistics", "Random"," Dates",
 "Distributions", "CSV"]

@time Pkg.add(string.(lib_list))
@time require(NearestNeighbors, DataFrames, LightGraphs, Profile, Plots, Statistics, Random, Dates, Distributions, CSV)