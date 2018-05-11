function [X] = clear_extra_cols(X)
X(:,4)=[];
X(:,5:8)=[];
X(:,6:7)=[];
X(:,8:9)=[];
X(:,2)=[];
X(:,3)=[];
end