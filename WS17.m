fid=fopen('data17.dat');
while fid==-1
    a=input('Error, input again: ','s');
    fid=fopen(a);
end
counter=0;
aline=fgetl(fid);
while aline~=-1
    for i=1:counter
    plots=subplot(2,1,i);
    aline=(fgetl(fid));
    b=strrep(aline,'x',' ');
    b=deblank(b)
    b=str2num(b);;
    bar(1:6,b)
    hold on
    end

    aline=fgetl(fid);
    counter=counter+1;
end

