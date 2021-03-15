fid=fopen('meatqute.dat');
fid2=fopen('somethingcool.dat');
fid3=fopen('whyphy.dat');
fid4=fopen('mynamejeff.dat');
maticemass=zeros(163,2);
aline=fgetl(fid);
for i=1:163
        [x y]=strtok(aline);
    x=str2num(x);
    y=abs(str2num(strtrim(y)));
    y=-log10(y);
    maticemass(i,1)=x;
    maticemass(i,2)=y;
    
    aline=fgetl(fid);
end


matnhtemp=zeros(18,2);
for i=1:152
aline=fgetl(fid2);
end
for i=1:18
        [x y]=strtok(aline);
    x=str2num(x);
    y=5*abs(str2num(strtrim(y)))+1;
    
    matnhtemp(i,1)=x;
    matnhtemp(i,2)=y;
    
    aline=fgetl(fid2);

end

matCO2=zeros(204,2);
for i=1:156
aline=fgetl(fid3);
end
for i=1:204
        [x y]=strtok(aline);
    x=str2num(x);
    y=abs(str2num(strtrim(y)));
    y=y/100;
    
    matCO2(i,1)=x;
    matCO2(i,2)=y;
    
    aline=fgetl(fid3);

end


matsealevel=zeros(159,2);
for i=1:107
aline=fgetl(fid4);
end
for i=1:159
        [x y]=strtok(aline);
    x=str2num(x);
    y=abs(str2num(strtrim(y)))/10;
    
    matsealevel(i,1)=x;
    matsealevel(i,2)=y;
    aline=fgetl(fid4);
end


fclose('all');


plot(maticemass(:,1),maticemass(:,2),matsealevel(:,1),matsealevel(:,2),matCO2(:,1),matCO2(:,2),matnhtemp(:,1),matnhtemp(:,2))
legend('Ice Mass(Gt)','NH Temp(K)','CO2 conc(ppm)','Sea Level(','Location','east')

