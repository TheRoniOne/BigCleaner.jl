using SafeTestsets

if Threads.nthreads() > 1
    @show Threads.nthreads()
else
    @warn("Tests using only 1 thread, multithreaded code will not be tested.")
end

@safetestset "test_Pipeline.jl" begin include("test_Pipeline.jl") end
