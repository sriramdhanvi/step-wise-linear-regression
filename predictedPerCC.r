CC <- data_testing$avg_cc;

data_testing$target <- predictions/CC;

orderedData <- data_testing[order(-data_testing$target),];

orderedData$target <- NULL;

write.csv(orderedData,"E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\testDataOrderedByPredictions.csv",row.names=F);

cumulativeLOC <- cumsum(orderedData$loc);

cumulativeBugs <- cumsum(orderedData$bug);

totalLOC <- cumulativeLOC[NROW(cumulativeLOC)];
totalBugs <- cumulativeBugs[NROW(cumulativeBugs)];

percentLOC <- (cumulativeLOC/totalLOC)*100;
percentBugs <- (cumulativeBugs/totalBugs)*100;

lines(percentLOC,percentBugs,type="o",col="dark green",lwd=0.5,pch=".",cex=0.8)
