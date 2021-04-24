function nhtempdata()
fid = fopen('HadCRUT4-nh.dat.txt');
fid2 = fopen('somethingcool.dat','w');
aline = fgetl(fid);
while aline ~= -1
    v = strsplit(aline);
    d = v{2};
    s = v{15};
    fprintf(fid2,'%s %s\n',d,s);
    fgetl(fid);
    aline = fgetl(fid);
end
fclose('all'); 
end