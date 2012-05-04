* Where to add real error-checking?
* Need better examples and better documentation, especially of quirky "edge" cases
* Need to confirm system works with multiple inequality constraints
* Need to switch over to using iterators via the `itertools` package
* Use formula notation: iddply(data, ~ eq(Time, 0) + gt(Space, 1) + lt(Cats, 5) + norm(Dogs, 3), func…)
* Consider using strict inequality constraints in addition to loose inequalities.
* If `func` produces colnames, respect them.
* Add norm half-balls.
* Try using data.table to add indices on all subsetting columns.

* Cartesian product may be much larger than is "necessary": i.e. redundant columns

# Benchmarking

* Generate data set of performance of code at time of each commit on several benchmarks.
* For each benchmark, demonstrate how performance depends on problem size.
