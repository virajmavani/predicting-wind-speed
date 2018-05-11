function [X, y] = pre_process_traindata(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)
Jan = clear_extra_cols(Jan);
Feb = clear_extra_cols(Feb);
Mar = clear_extra_cols(Mar);
Apr = clear_extra_cols(Apr);
May = clear_extra_cols(May);
Jun = clear_extra_cols(Jun);
Jul = clear_extra_cols(Jul);
Aug = clear_extra_cols(Aug);
Sep = clear_extra_cols(Sep);
Oct = clear_extra_cols(Oct);
Nov = clear_extra_cols(Nov);
Dec = clear_extra_cols(Dec);

X = [Jan;Feb;Mar;Apr;May;Jun;Jul;Aug;Sep;Oct;Nov;Dec];
y = X(:,3);
X(:,3)=[];
X=X';
y=y';
end