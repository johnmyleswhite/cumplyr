# An Extension of plyr to Overlapping Data Problems

Simple implementations of extensions to plyr functions that use a more general version of the split-apply-combine strategy that permits splitting the data into sets that overlap. In particular, the current function, `cumddply`, allows splitting data into overlapping, sequential sets so that cumulative quantities like running means can be calculated.

The next extension after this is to extend to bounded regions about the current constraints for performing, for example, many kernel calculations on splits of the data.

# Usage Example

Compute a running mean within each subset of trials in the current block using all trials before the current trial:

    library('cumplyr')

    data(rt.data)

    print(rt.data)
    
    results <- cumddply(rt.data,
                        c('Subject', 'Block'),
                        c('Trial'),
                        function (df) {with(df, mean(RT))})

    names(results) <- c('Subject', 'Block', 'Trial', 'CumulativeMeanRT')
    
    print(results)
