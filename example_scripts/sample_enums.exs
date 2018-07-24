defmodule Sample.Enum do
    # def first(list, val \\ nil)
    # def first([head | _], _), do: head
    # def first([], val), do: val

    def first([]), do: nil
    def first([head | _]), do: head
        
    def add(list, _ ) when length(list) == 0, do: "Empty list"
    
    def add(list, val \\ 0) do
        trace(val)
        [val | list]
    end

    defp trace(string) do
        IO.puts("The value passed in was #{string}")
    end

    def get_day_cond(day) do
        cond do
            day == :monday -> "Monday"
            day == :tuesday -> "Tuesday"
            true -> "Invalid"
        end
    end

    def get_day_case(day) do
        case day do
            :monday -> "Monday"
            :tuesday -> "Tuesday"
            _ -> "Invalid"
        end
    end

    def get_day_pattern_matching(:monday), do: "- Monday"
    def get_day_pattern_matching(:tuesday), do: "- Tuesday"
    def get_day_pattern_matching(_), do: "Invalid"

    def map(_), do: []
    def map([], _), do: []
    def map([hd | tl], f) do
        [f.(hd) | map(tl, f)]
    end

    def map2([]), do: []
    def map2([], _), do: []
    def map2([hd | tl], f) do
        [f.(hd) | map2(tl, f)]
    end

    def xlength([]), do: 0
    def xlength([_ | tail]) do
        10 + xlength(tail)
    end

    def other_length([_ | tail]) do
        other_length(tail, 1)
    end
    def other_length([], len) do
        len
    end
    def other_length([_ | tail], len) do
        other_length(tail, len + 1)
    end

end
