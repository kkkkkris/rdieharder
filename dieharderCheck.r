#!/usr/bin/env r

library(RDieHarder)

testSummary <- function(dh, rdh, test, ntuple=NULL) {
    cmp <- all.equal(dh, rdh, tolerance=1e-6)
    if (cmp == TRUE) {
        cat("AGREEMENT for test=", test,
            ifelse(!is.null(ntuple), paste(" ntuple=", ntuple, ": ", sep=""), ""),
            " on pval=", rdh, "\n", sep="")
    } else {
        cat("For test=", test,
            ifelse(!is.null(ntuple), paste(" ntuple=", ntuple, ": ", sep=""), ""),
            cmp, " : ", dh, " vs : ", rdh, "\n", sep="")
    }
}

## first set is over RGB tests 3, 4, 5 and ntuples 2 to 6
runRGB <- function() {
    for (rtest in 3:6) {  # r=4 has an issue
        #for (ntuple in 2:6) {
        for (ntuple in 2) {
            cmd <- paste("dieharder -q -S 1 -r", rtest, "-n", ntuple,
                         " | awk '/^Kuiper KS/ {print $5}'")
            dh <- as.numeric(system(cmd, intern=TRUE))
            rdh <- dieharder(test=100+rtest, seed=1, ntuple=ntuple)$p.value
            testSummary(dh, rdh, 100+rtest, ntuple)
        }
    }
}

## second set is over Dieharder tests 1 to 18
## note that 18 (Marsaglia and Tsang GDC) takes a very long time
runDieharder <- function() {
    for (dtest in seq(1,18)) {
        cmd <- paste("dieharder -q -S 1 -d", dtest,
                     " | awk '/^Kuiper KS/ {print $5}'")
        dh <- as.numeric(system(cmd, intern=TRUE))[1]
        rdh <- dieharder(test=dtest, seed=1)$p.value
        testSummary(dh, rdh, dtest)
    }
}

## third set is over STS tests 1 to 3
runSTS <- function() {
    for (stest in seq(1,3)) {  # r=4 has an issue
        cmd <- paste("dieharder -q -S 1 -s", stest,
                     " | awk '/^Kuiper KS/ {print $5}'")
        dh <- as.numeric(system(cmd, intern=TRUE))[1]
        rdh <- dieharder(test=200+stest, seed=1)$p.value
        testSummary(dh, rdh, 200+stest)
    }
}

#runRGB()
#runDieharder()
#runSTS()
