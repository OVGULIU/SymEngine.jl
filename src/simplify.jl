
function Base.expand(b::BasicType)
    a = Basic()
    b = Basic(b)
    ccall((:basic_expand, :libsymengine), Void, (Ptr{Basic}, Ptr{Basic}), &a, &b)
    return Sym(a)
end
