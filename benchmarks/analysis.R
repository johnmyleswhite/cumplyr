library('lubridate')

benchmarks <- read.csv(file.path('benchmarks', 'benchmarks.tsv'), sep = '\t')
benchmarks <- transform(benchmarks, Time = ymd_hms(Time))

ggplot(benchmarks, aes(x = Time, y = Elapsed, group = Benchmark, color = Benchmark)) +
  geom_line()
ggplot(benchmarks, aes(x = ProblemSize, y = Elapsed, group = Benchmark, color = Benchmark)) +
  geom_line()

# Generate separate plots for each benchmark.
