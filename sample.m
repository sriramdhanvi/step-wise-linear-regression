trdata = csvread('E:\STUDY\THESIS\STEP-WISE REGRESSION\finalData.csv',1,0);
[TRAIN,TEST] = crossvalind('HoldOut',length(trdata),0.3);
training = trdata(TRAIN,:);
testing = trdata(TEST,:);

csvwrite('E:\STUDY\THESIS\STEP-WISE REGRESSION\traindata.csv',training);
csvwrite('E:\STUDY\THESIS\STEP-WISE REGRESSION\testdata.csv',testing);