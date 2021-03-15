count=1;
fid = fopen('potfilenames.dat');
n=length(fid);
aline = fgetl(fid);
while aline~= -1
    x=fopen(aline);
    if x==-1
        fprintf('not a valid filename')
    else
    count=count+1;
    fprintf('%s.dat',aline)
end
fprintf('%d of the filenames were valid',count)