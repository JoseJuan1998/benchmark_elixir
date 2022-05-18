list = Enum.to_list(1..100_000)

Benchee.run(%{
  "tail_call_opt" => fn -> Benchmark.incrementer(list) end,
  "Enum.map" => fn -> Enum.map(list, &(&1 + 1)) end
},
  formatters: [
    {Benchee.Formatters.HTML, file: "benchmarks/results.html"},
    Benchee.Formatters.Console
  ]
)
