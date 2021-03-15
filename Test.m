mat = [1:4;5 5 5 5]';
matt=sum(mat)
[r c]=size(mat);
matsum=zeros(1,c);
for j=1:c
    for i=1:r
        matsum(1,j)=matsum(1,j)+mat(i,j);
    end
end
matt2=matsum