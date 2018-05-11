clc;
clear;

Jan = xlsread('..\Dataset\January2016.xlsx');
Feb = xlsread('..\Dataset\February2016.xlsx');
Mar = xlsread('..\Dataset\March2016.xlsx');
Apr = xlsread('..\Dataset\April2016.xlsx');
May = xlsread('..\Dataset\May2016.xlsx');
Jun = xlsread('..\Dataset\June2016.xlsx');
Jul = xlsread('..\Dataset\July2016.xlsx');
Aug = xlsread('..\Dataset\August2016.xlsx');
Sep = xlsread('..\Dataset\September2016.xlsx');
Oct = xlsread('..\Dataset\October2016.xlsx');
Nov = xlsread('..\Dataset\November2016.xlsx');
Dec = xlsread('..\Dataset\December2016.xlsx');

testData = xlsread('..\Dataset\TestData2017.xlsx');

[X,y] = pre_process_traindata(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
[X_test, y_test] = pre_process_testdata(testData);

net = fitnet([10 5],'trainlm');
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
 
% Train the Network
[net,tr] = train(net,X,y);
 
% Test the Network
outputs = net(X);
test_outputs = net(X_test)
errors = gsubtract(outputs,y);
performance = perform(net,y,outputs)