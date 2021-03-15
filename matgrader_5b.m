% write code to compute the value of the inverse to within the tolerance:
x=1/exp(1);
n=1;
y=(1-1/n)^n;
z=abs(x-y);
while z>0.0001
      n=n+1;
      y=(1-1/n)^n;
      z=x-y;
      
end
      

% store the value of n needed to reach this accuracy:
accurate_n = n