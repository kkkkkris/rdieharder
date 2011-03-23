#!/usr/bin/r

options(digits=10, stringsAsFactors=FALSE)
library(RDieHarder)
library(multicore)                      # run this in parallel

dhtest <- "diehard_runs"
#dhtest <- "diehard_squeeze"
seed <- 42
ind <- c(1:62,66:69,71:78)  		# exclude stdio+file based ones, threefishOR, hardware and empty

res <- mclapply(ind, FUN=function(x) {  # loop in parallel over our indices
    id <- .dieharder.generators[x, "id"]
    z <- dieharder(id, dhtest, seed=42)
    res <- c(.dieharder.generators[x,],	# return the name and id
             summary(z$data))        	# along with the six-num summary
    res
})

df <- as.data.frame(do.call(rbind, res))               # glue all list elements into one data.frame
print(df,row.names=FALSE)
