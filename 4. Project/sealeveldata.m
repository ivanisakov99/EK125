function sealeveldata()
%saves desired data from the large data set to new file
%websave takes data set to local file
websave('Sealevel.dat','https://pkgstore.datahub.io/core/sea-level-rise/csiro_alt_gmsl_mo_2015_csv/data/dc258c2039d8b640f74efd3d23e1c920/csiro_alt_gmsl_mo_2015_csv.csv');
fid = fopen('Sealevel.dat');        %local large data set file
fid2 = fopen('mynamejeff.dat','w'); %new file

%skip first line
fgetl(fid);
aline = fgetl(fid);
while aline ~= -1
    [x, y] = strtok(aline,',');
    %replace month string with decimal approximation
    %data is middle of the month, so '-01' = 0.5/12,
    %                                '-02' = 1.5/12, etc.
    if contains(x,'-01') == 1
        d = strrep(x,'-01-15','.0417');
    elseif contains(x,'-02') == 1
        d = strrep(x,'-02-15','.125');
    elseif contains(x,'-03') == 1
        d = strrep(x,'-03-15','.2083');
    elseif contains(x,'-04') == 1
        d = strrep(x,'-04-15','.2917');
    elseif contains(x,'-05') == 1
        d = strrep(x,'-05-15','.375');
    elseif contains(x,'-06') == 1
        d = strrep(x,'-06-15','.4583');
    elseif contains(x,'-07') == 1
        d = strrep(x,'-07-15','.5417');
    elseif contains(x,'-08') == 1
        d = strrep(x,'-08-15','.625');
    elseif contains(x,'-09') == 1
        d = strrep(x,'-09-15','.7083');
    elseif contains(x,'-10') == 1
        d = strrep(x,'-10-15','.7917');
    elseif contains(x,'-11') == 1
        d = strrep(x,'-11-15','.875');
    elseif contains(x,'-12') == 1
        d = strrep(x,'-12-15','.9583');
    end
    
    v = str2num(strrep(y,',',''));
    fprintf(fid2,'%s %f\n',d,v);
    
    aline = fgetl(fid);
end

fclose('all');
end