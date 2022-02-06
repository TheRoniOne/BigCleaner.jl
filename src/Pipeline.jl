mutable struct Pipeline
    table
    steps::Vector{Function}

    function Pipeline(table, steps...)
        new(table, [steps...])
    end
end

function add_step!(pipeline::Pipeline, step::Function)
    push!(pipeline.steps, step)
end
