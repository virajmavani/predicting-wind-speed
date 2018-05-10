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

[X,y] = pre_process_traindata(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)