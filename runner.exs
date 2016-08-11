defmodule Runner do
  def run(module, [limit|_]) do
    run module,limit
  end

  def run(module, limit) when is_binary limit do
    run module,elem(Integer.parse(limit,10),0)
  end

  def run(module,limit) when is_integer limit do
    module.fizzbuzz(limit)
  end
end
