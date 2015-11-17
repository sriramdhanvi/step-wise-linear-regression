
orderedData <- data_testing[order(-data_testing$bug),];

write.csv(orderedData,"E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\testdata_orderedByActualBugs.csv",row.names=FALSE);


cumulativeLOC <- cumsum(orderedData$loc);
cumulativeBugs <- cumsum(orderedData$bug);

totalLOC <- cumulativeLOC[NROW(cumulativeLOC)];
totalBugs <- cumulativeBugs[NROW(cumulativeBugs)];

percentLOC <- cumulativeLOC/totalLOC;
percentLOC <- percentLOC*100;

percentBugs <- cumulativeBugs/totalBugs;
percentBugs <- percentBugs*100;

plot(percentLOC,percentBugs,type = "n");
legend("bottomright",c("Actual","Predicted","PredictedPerLOC","PredictedPerCC"),
       lty = c(1,1,1,1),lwd = c(1.5,1.5,1.5,1.5),col = c("black","red","blue","dark green"),cex=0.7)

lines(percentLOC,percentBugs,type="o",col="black",lwd = 1.5,pch=".",cex=0.8)
