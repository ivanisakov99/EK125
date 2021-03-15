fid=fopen('potfilenames.dat');
if fid==-1
    fprinf('error')
end
counter=0;
aline=fgetl(fid);
while aline~=-1
     s=strcat(aline,'.dat');
     fid2=fopen(s);
     if fid2==-1
         aline=fgetl(fid);
     else
         fprintf('%s\n',s)
         counter=counter+1;
         aline=fgetl(fid);
     end
end
fclose('all');
fprintf('No. of files opened %d\n',counter)
