Code.require_file "./runner.exs", __DIR__

defmodule Fizzbuzz3 do
  def fizzbuzz(limit) do
    fizz = Stream.cycle ["Fizz","",""]
    buzz = Stream.cycle ["Buzz","","","",""]
    0..limit
    |> Stream.zip((fizz |> Stream.zip(buzz)))
    |> Stream.map(fn(n) ->
      case n do
        # 0だけパターンから外れてしまうので…
        {0,_} -> 0
        {x,{"",""}} -> x
        {_,{f,b}} -> f <> b
      end
    end)
    |> Stream.each(&IO.puts &1)
    |> Stream.run
  end
end

Runner.run(Fizzbuzz3,System.argv)
