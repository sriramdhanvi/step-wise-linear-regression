
fileData <- read.csv("E:\\STUDY\\THESIS\\STEP-WISE REGRESSION\\finalData.csv",header=T);

N <- nrow(fileData);
trainid <- sample(1:N,as.integer(0.7*N));
testid <- setdiff(1:N,trainid);

data_training <<- fileData[trainid,];
data_testing <<- fileData[testid,];
