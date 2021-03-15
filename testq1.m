fid2=fopen('somethingcool.dat');
aline=fgetl(fid2);
matnhtemp=zeros(18,2);
for i=1:152
aline=fgetl(fid2);
end
for i=1:18
        [x y]=strtok(aline);
     x=str2num(x);
     y=5*abs(str2num(strtrim(y)));
%     %y=log10(y);
     matnhtemp(i,1)=x;
     matnhtemp(i,2)=y;
     
     aline=fgetl(fid2);

end


fclose('all');
%  disp(matnhtemp)