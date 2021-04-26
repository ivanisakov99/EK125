function co2()
%saves desired data from the large data set to new file
%websave takes data set to local file
websave('CO2.dat','http://scrippso2.ucsd.edu/assets/data/co2_data/co2_monthly/altc.txt');
fid = fopen('CO2.dat');         %local large data set file
fid2 = fopen('whyphy.dat','w'); %new file

%skip first 13 lines
for i = 1:13
    fgetl(fid);
end

aline = fgetl(fid);
while aline ~= -1
    v = strsplit(aline);
    d = v{1}; %dates
    s = v{5}; %average monthly carbon dioxide concentration
    fprintf(fid2,'%s %s\n',d,s);
    
    aline = fgetl(fid);
end

fclose('all');  
end
