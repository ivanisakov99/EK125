clear all
cityData= {'Lagos|ng','Jakarta|id','Bangkok|th','Nairobi|ke',...
    'Rio de Janeiro|br','Accra|gh','Longyearbyen|no','Khartoum|sd'};
cityn=length(cityData);
DataM=zeros(8,39);
n=1:8;
for i=1:length(n)
    [city country]=strtok(cityData{i},'|');
    country=erase(country,'|');
    key='70e9f383955e7372c06948520cd38387';
    endpoint='http://api.openweathermap.org/data/2.5/forecast?q=';
    resp=webread([endpoint,city,',',country,'&APPID=',key]);
    fprintf('RETREIVING WEATHER FOR %s...\n',city)
    for j=1:39
        try 
            a=resp(1);
            lista=[a.list];
            listb=(lista{j});
            maina=(listb.main);
            DataM(i,j)=(maina.temp);
            
        catch
                a=resp(1);
                lista=a.list;
                listb=(lista(j));
                maina=(listb.main);
                DataM(i,j)=(maina.temp);
        end
        DataM(i,j)=(DataM(i,j)-273.15)*(9/5)+32;
    end
end
x=3:3:117;
plotn=subplot(2,1,1);

for i=1:8
        [city country]=strtok(cityData{i},'|');
        plot(x,DataM(i,:),'-','Linewidth',1);
        
        hold on
        title('Temperature for the 5 day period')
        xlabel('Time/hrs')
        ylabel('Temp/F')

        xticks(0:12:120)
end
city1=cell(1,8);
for i=1:8
[city country]=strtok(cityData{i},'|');
city1{i}=city;
end
legend(city1)
DataB=zeros(8,1);
for i=1:8
    DataB(i)=min(DataM(i,:));
    
       
end
plotm=subplot(2,1,2);
    
plot(n,DataB,'k*')
    title('Minimum Temp Over 5 Days')
    xlabel('Cities')
    ylabel('Temp/F')
    set(plotm,'xticklabel',city1)
