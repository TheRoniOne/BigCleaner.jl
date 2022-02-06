using Test
using BigCleaner: Pipeline, add_step!

@testset "Pipeline is working as expected" begin
    p = Pipeline("a", push!)
    @test p isa Pipeline
    @test p.table == "a"

    add_step!(p, pop!)
    @test p.steps == [push!, pop!]

end
