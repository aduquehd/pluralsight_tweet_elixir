defmodule ModulePlayground do
    import IO, only: [puts: 1]
    require Integer

    def is_even(num) do
        puts "The number #{num} is even? #{Integer.is_even(num)}"
    end
    
end

ModulePlayground.is_even(2)