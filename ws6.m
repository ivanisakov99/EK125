fid=fopen('xypoints2.dat');
if fid==-1
    fprintf('Error with opening file')
end
mat=fscanf(fid,'%c %f %c %f\n',[4 inf]);
r=mat(2,:);
c=mat(4,:);
ph=plot(r,c);
fc=fclose('all');
if fc==-1
    fprintf('File didn''t close')
else
    fprintf('File closed')
end