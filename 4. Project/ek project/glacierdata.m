function glacierdata()
%saves desired data from the large data set to new file
fid = fopen('antarctica_mass_200204_201706.txt'); %big data set
fid2 = fopen('meatqute.dat','w');                 %new file

%skip first 32 lines
for i = 1:32
    fgetl(fid);
end

aline = fgetl(fid);
while aline ~= -1
    v = strsplit(aline);
    d = v{1};
    s = v{2};
    fprintf(fid2,'%s %s\n',d,s);
    aline = fgetl(fid);
end
fclose('all'); 
end