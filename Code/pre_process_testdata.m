function [X, y] = pre_process_testdata(test)
test = clear_extra_cols(test);
X = test;
y = X(:,3);
X(:,3)=[];
X=X';
y=y';
end