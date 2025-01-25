using Pkg

lib_list = [
 # core
 "Plots", "Colors", "ColorSchemes", "DataFrames", "CSV", "LaTeXStrings", "ProgressMeter", "JLD2", "OpenAI",
 
 # data-driven model
 "Combinatorics", "Symbolics", "DecisionTree",  "PrettyTables"
 
 # AI
 # "Flux", "CUDA", "Zygote", "Clustering",
 
 # "Graphs", "Distributions", "StatsBase", "GLM",  
 # "JSON", "XLSX",
 # "Pluto", "Crayons", "SMTPClient",
 # "Distances", "NearestNeighbors", "BoundingSphere", 
]

@time Pkg.add(lib_list)
@time Pkg.precompile(timing=true)

if :Pluto in lib_list
  using Pluto
  Pluto.run()
end

if :Cuda in lib_list
  using CUDA
  println("CUDA.functional(): ", CUDA.functional())
end
