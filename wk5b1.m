minnum=input('enter min value: ');
maxnum=input('enter max value: ');
choice=input('enter a num in range: ');
count=1;
range=randi([minnum maxnum]);
while range~=choice
    range=randi([minnum maxnum]);
    count=count+1;
end
fprintf('it took %d tries to generate your number\n',count)