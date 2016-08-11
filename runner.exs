defmodule Runner do

  # def/2が複数ある(複数のclauseがある)ので、デフォルト値だけ宣言しておく
  def run(module, limit \\ 100)

  def run(module,[]) do
    run module
  end

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
