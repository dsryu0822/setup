using Pkg

lib_list = [
 "DataFrames", "Graphs", "CSV", "LaTeXStrings",
 "ProgressMeter", "JLD2", "OpenAI",
 "Flux", "CUDA", "Zygote", "DecisionTree", "Clustering",
 "Distributions", "StatsBase", "GLM", "Combinatorics", 
 "Pluto", "PrettyTables",
 # "JSON", "XLSX",
 # "Crayons", "SMTPClient",
 # "Distances", "NearestNeighbors", "BoundingSphere", 
 "Plots", "Colors", "ColorSchemes" # Too much essential
]

@time Pkg.add(lib_list)
@time Pkg.precompile(timing=true)
 
using Pluto, CUDA
Pluto.run()
println("CUDA.functional(): ", CUDA.functional())
