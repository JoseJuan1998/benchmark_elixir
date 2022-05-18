defmodule Benchmark do
  def incrementer(list, acc \\ [])

  def incrementer([], acc) do
    Enum.reverse(acc)
  end

  def incrementer([head|tail], acc) do
    incrementer(tail, [head+1|acc])
  end
end
