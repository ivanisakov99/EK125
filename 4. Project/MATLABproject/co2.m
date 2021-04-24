function co2()
websave('CO2.dat','http://scrippso2.ucsd.edu/assets/data/co2_data/co2_monthly/altc.txt');
fid = fopen('CO2.dat');
fid2 = fopen('whyphy.dat','w');
for i = 1:13
    fgetl(fid);
end
aline = fgetl(fid);
while aline ~= -1
    v = strsplit(aline);
    d = v{1};
    s = v{5};
    fprintf(fid2,'%s %s\n',d,s);
    aline=fgetl(fid);
end
fclose('all');  
end
