using FiniteDifferences
using LinearAlgebra

∇(f, x) = first(grad(central_fdm(2, 1), f, x))
function GD!(f, x; h = 0.001)
    x .-= h * ∇(f, x)
    return x
end
function findfixed(f, x0; maxitr = 10_000, atol = 1e-6, h = 0.001)
    x = deepcopy(x0)
    L(x) = norm(f(x))
    L_ = Float64[]
    for t in 1:maxitr
        GD!(L, x; h = h)
        push!(L_, L(x))
        if last(L_) < atol
            @info """$t / $maxitr iterations
            $(last(L_)) < atol = $atol"""
            return x
        end
    end
    @warn """not converged...
    $(last(L_)) > atol = $atol"""
    return x
end

pairwiseadd(X::Vector{T}, Y::Vector{Vector{T}}) where T <: Number = [X + y for y in Y]
pairwiseadd(X::Vector{Vector{T}}, Y::Vector{Vector{T}}) where T <: Number = reduce(vcat, [pairwiseadd(x, Y) for x in X])
pairwiseadd(X::Vector{Vector{T}}, Y::Vector{T}) where T <: Number = pairwiseadd(Y, X)

@info "∇, GD!, findfixed, pairwiseadd are defined"