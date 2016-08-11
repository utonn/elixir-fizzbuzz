Code.require_file "./runner.exs", __DIR__

defmodule Fizzbuzz2 do
  def fizzbuzz(limit) do
    Enum.each(0..limit,fn(n) ->
        case n do
          x when rem(x,15) == 0  -> IO.puts "FizzBuzz"
          x when rem(x,3) == 0  -> IO.puts "Fizz"
          x when rem(x,5) == 0  -> IO.puts "Buzz"
          x  -> IO.puts x
        end
      end)
  end
end

Runner.run(Fizzbuzz2,System.argv)
