function glacierdata()
fid = fopen('antarctica_mass_200204_201706.txt');
fid2 = fopen('meatqute.dat','w');
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