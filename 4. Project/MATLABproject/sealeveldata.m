function sealeveldata()
websave('Sealevel.dat','https://pkgstore.datahub.io/core/sea-level-rise/csiro_alt_gmsl_mo_2015_csv/data/dc258c2039d8b640f74efd3d23e1c920/csiro_alt_gmsl_mo_2015_csv.csv');
fid = fopen('Sealevel.dat');
fid2 = fopen('mynamejeff.dat','w');
fgetl(fid);
aline = fgetl(fid);
while aline ~= -1
    [x, y] = strtok(aline,',');
    if contains(x,'-01') == 1
        d = strrep(x,'-01-15','.0833');
    elseif contains(x,'-02') == 1
        d = strrep(x,'-02-15','.1667');
    elseif contains(x,'-03') == 1
        d = strrep(x,'-03-15','.25');
    elseif contains(x,'-04') == 1
        d = strrep(x,'-04-15','.3333');
    elseif contains(x,'-05') == 1
        d = strrep(x,'-05-15','.4167');
    elseif contains(x,'-06') == 1
        d = strrep(x,'-06-15','.5');
    elseif contains(x,'-07') == 1
        d = strrep(x,'-07-15','.5833');
    elseif contains(x,'-08') == 1
        d = strrep(x,'-08-15','.6667');
    elseif contains(x,'-09') == 1
        d = strrep(x,'-09-15','.75');
    elseif contains(x,'-10') == 1
        d = strrep(x,'-10-15','.8333');
    elseif contains(x,'-11') == 1
        d = strrep(x,'-11-15','.9167');
    elseif contains(x,'-12') == 1
        d = strrep(x,'-12-15','.9999');
    end
    v = str2num(strrep(y,',',''));
    fprintf(fid2,'%s %f\n',d,v);
    aline = fgetl(fid);
end
fclose('all');
end