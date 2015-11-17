library(limma);

fileData <- read.columns("E:\\STUDY\\THESIS\\FILES GIVEN BY SWAPNIL\\Datasets\\camel\\camel-1.6.csv",c("wmc","dit","noc","cbo","rfc","lcom","loc","avg_cc","bug"),sep=",");

dataSet <- data.frame(wmc=fileData$wmc,dit=fileData$dit,
                      noc=fileData$noc,cbo=fileData$cbo,
                      rfc=fileData$rfc,lcom=fileData$lcom,
                      avg_cc=fileData$avg_cc,loc=fileData$loc,bug=fileData$bug);

write.csv(dataSet,"E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\finalData.csv",row.names=F);

source("E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\SOURCE CODE\\readTrain&Test.r");
source("E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\SOURCE CODE\\actual.r");
source("E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\SOURCE CODE\\predicted.r");
source("E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\SOURCE CODE\\predictedPerLOC.r");
source("E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\SOURCE CODE\\predictedPerCC.r");