Code.require_file "./runner.exs", __DIR__

defmodule Fizzbuzz3 do
  def fizzbuzz(limit) do
    fizz = Stream.cycle ["Fizz","",""]
    buzz = Stream.cycle ["Buzz","","","",""]

    fizz
    |> Stream.zip(buzz)
    |> Stream.with_index
    |> Stream.map(fn(n) ->
      case n do
        # 0だけパターンから外れてしまうので…
        {_,0} -> 0
        {{"",""},x} -> x
        {{f,b},_} -> f <> b
      end
    end)
    |> Stream.each(&IO.puts &1)
    |> Stream.take(limit + 1)
    |> Stream.run
  end
end

Runner.run(Fizzbuzz3,System.argv)
