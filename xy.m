fid=fopen('xypoints.dat','w');
mat=cell(4,1);
for i=1:10
    x=i;
    y=i+1;
    mat(i,1)=x
end
closeresult=fclose(fid);