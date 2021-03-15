% fid=fopen('xypoints.dat','w');
% for i=0:10
%     x=i;
%     y=i+1;
%     fprintf('x %d y %d\n',x,y)
% end
% closeresult=fclose(fid);
a='xypoints.dat';


fid=fopen('xypoints.dat')

aline=fgetl(fid)

% [x y]=strtok(aline,'y');
% disp(y)
closeresult=fclose(fid);