function [D M S]=dd2dms(dd)
D=fix(dd);
m=(dd-D)*60;
M=fix(m);
s=(m-M)*60;
S=fix(s);
end