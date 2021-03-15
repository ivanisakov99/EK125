x=input('enter the base length: ');
x1=input('is it i or c? ','s');
if x1=='c'
    x=x/2.54;
end
y=input('enter the base width: ');
y1=input('is it i or c? ','s');
if y1=='c'
    y=y/2.54;
end
z=input('enter the base length: ');
z1=input('is it i or c? ','s');
if z1=='c'
    z=z/2.54;
end
vol=(1/3)*(x)*(y)*(z);
fprintf('the volume is %.3f cubic inches\n',vol)