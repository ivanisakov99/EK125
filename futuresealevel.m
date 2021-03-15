function futuresealevel()
fid=fopen('FutureSeaLevel.dat');
fid2=fopen('FutureSL.dat','w');
fgetl(fid);
aline=fgetl(fid);
while aline~= -1
    [x y]=strtok(aline);
    y=str2num(strtrim(y));
    fprintf(fid2,'%s %f\n',x,y);
    aline = fgetl(fid);
end
fclose('all');
end
    