# An Extension of plyr to Overlapping Data Problems

Simple implementations of extensions to plyr functions that use a more general version of the split-apply-combine strategy that permits splitting the data into sets that overlap. In particular, the current function, `cumddply`, allows splitting data into overlapping, sequential sets so that cumulative quantities like running means can be calculated.

The next extension after this is to extend to bounded regions about the current constraints for performing, for example, many kernel calculations on splits of the data.
