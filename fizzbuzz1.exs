defmodule Fizzbuzz1 do
  def run([limit|_]) do
    run limit
  end

  def run(limit) when is_binary limit do
    run elem(Integer.parse(limit,10),0)
  end

  def run(limit) when is_integer limit do
    fizzbuzz(limit)
  end

  def fizzbuzz(limit) do
    fizzbuzz(0,limit)
  end

  def fizzbuzz(counter, limit) when counter > limit do
  end

  def fizzbuzz(counter,limit) do
      say(counter)
      fizzbuzz(counter + 1, limit)
  end

  def say(limit) when rem(limit,15) == 0 do
    IO.puts "FizzBuzz"
  end

  def say(limit) when rem(limit,3) == 0 do
    IO.puts "Fizz"
  end

  def say(limit) when rem(limit,5) == 0 do
    IO.puts "Buzz"
  end

  def say(limit) do
    IO.puts Integer.to_string limit
  end

end

Fizzbuzz1.run(System.argv)
