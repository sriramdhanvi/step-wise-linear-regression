library(leaps);

null <- lm(bug~1,data=data_training);

full <- lm(bug~.,data = data_training);

finalModel <- step(null,scope=list(lower=null,upper=full),direction="forward")

predictions <<- predict.lm(finalModel,data_testing);

data_testing$target <- predictions;

orderedData <- data_testing[order(-data_testing$target),];

data_testing$target <- NULL;

write.csv(orderedData,"E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\testDataOrderedByPredictions.csv",row.names=F);

cumulativeLOC <- cumsum(orderedData$loc);

cumulativeBugs <- cumsum(orderedData$bug);

totalLOC <- cumulativeLOC[NROW(cumulativeLOC)];
totalBugs <- cumulativeBugs[NROW(cumulativeBugs)];

percentLOC <- (cumulativeLOC/totalLOC)*100;
percentBugs <- (cumulativeBugs/totalBugs)*100;

lines(percentLOC,percentBugs,type="o",col="red",lwd = 0.5,pch=".",cex=0.8)
