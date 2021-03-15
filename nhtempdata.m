function nhtempdata()
%saves desired data from the large data set to new file
fid = fopen('HadCRUT4-nh.dat.txt');    %data set
fid2 = fopen('somethingcool.dat','w'); %new file

aline = fgetl(fid);
while aline ~= -1
    v = strsplit(aline);
    d = v{2};  %dates
    s = v{15}; %yearly average temperature
    fprintf(fid2,'%s %s\n',d,s);
    
    %skip one line
    fgetl(fid);
    aline = fgetl(fid);
end
fclose('all'); 

end