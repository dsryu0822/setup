head(x) = eval(Meta.parse("$(x)[$(":, " ^ (length(size(x))-1)) 1:(end-1)]"))
tail(x) = eval(Meta.parse("$(x)[$(":, " ^ (length(size(x))-1)) 2: end   ]"))
