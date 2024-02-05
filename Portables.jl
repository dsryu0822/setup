head(x) = eval(Meta.parse("$(x)[$(":, " ^ (length(size(x))-1)) 1:(end-1)]"))
tail(x) = eval(Meta.parse("$(x)[$(":, " ^ (length(size(x))-1)) 2: end   ]"))

function argext(arr)
    idxmin = (circshift(arr, 1) .> arr) .&& (circshift(arr, -1) .> arr)
    idxmax = (circshift(arr, 1) .< arr) .&& (circshift(arr, -1) .< arr)
    return idxmin .|| idxmax
end

# x = [missing, missing, 3, 4, 7, missing, missing, 9, missing, 0, missing]

function padmissing(x)
    if x .|> !ismissing |> all
        return x
    elseif x .|> ismissing |> all
        @error "padmissing: x is all missing"
    end
    x = deepcopy(Vector{Union{Float64, Missing}}(x))
    if first(x) |> ismissing
        k = findfirst(!ismissing, x)
        x[1:k-1] .= x[k]
    end
    if last(x) |> ismissing
        k = findlast(!ismissing, x)
        x[k+1:end] .= x[k]
    end
    y = diff(ismissing.(x))
    heads = findall(y .== 1)
    tails = findall(y .== -1) .+ 1

    argitpl = UnitRange.(heads, tails)
    valitpl = LinRange.(x[heads], x[tails], tails - heads .+ 1)
    x[vcat(argitpl...)] .= vcat(valitpl...)

    return x
end
# [x padmissing(x)]

⊕(x, y) = [x; y]
⊕(x, y...) = reduce(⊕, [x, y...])

@info "head, tail, argext, padmissing are defined"
@info "operations ⊕ are defined"
@info "Int64 is overloaded to String"