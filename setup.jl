using Pkg

lib_list =
 ["Distances", "NearestNeighbors", "BoundingSphere", "DataFrames", "Graphs",
 "Profile", "Plots", "Statistics", "Random",
 "Distributions", "StatsBase", "LaTeXStrings", "GLM",
 "StatsPlots", "Pluto",
 "JSON", "CSV", "XLSX", "JLD2",
 "Crayons", "SMTPClient",
 "CUDA"
]

@time Pkg.precompile(timing=true)
@time Pkg.add(string.(lib_list))
 
using Pluto, CUDA
println("CUDA.functional(): ", CUDA.functional())
Pluto.run()
