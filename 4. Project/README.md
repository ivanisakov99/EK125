# <ins>Project:</ins>
In the past fifty years, the oceanic sea level has increased six to eight inches. Due to extreme weather, for example Nor’easters, have caused tidal levels to increase up to two feet taller than traditional high tides. This seemingly small phenomenon is a detrimental factor to multitudes of problems not only environmentally as well as personally to the citizens in coastal regions. Higher sea levels halt the earth’s natural drainage system from floods caused by heavy rain and storm surges, which results in floods to overstaying their visit. Longer lasting Floods can cause millions of dollars in damage to cities’ small businesses, homes, and means of transportation. “Floods cause more than $40 billion in damage worldwide annually, according to the Organization for Economic Cooperation and Development. In the U.S., losses average close to $8 billion a year. Death tolls due to having increased in recent decades to more than 100 people a year.”
In addition, battling the stress of protecting one’s property from global warming-induced water damage is incredibly injurious to citizens mental health. Affectees of natural disasters resulting in water damage have significantly increased rates of binge drinking, suicide, and PTSD. For example, around 800,000 people that were affected by the flooding in Houston from Hurricane Harvey in 2017 were diagnosed with PTSD.

Overall, the increase in severity and frequency of hurricanes have become more and more financially and emotionally damaging to citizens of coastal regions each year. Solving the overtly complex issue of global warming may take years to see results, in which our application strives to protect citizens and their property of meanwhile global warming rates and their harmful effects increase. As discussed earlier, a major proponent of water damage to coastal regions is the rising sea level. By aiding people to predict the rise in sea level in the next few years, cities and individuals can budget as well as plan infrastructures to counteract the damage of flooding, in addition to helping floods subside quicker. Our application graphs the changes in Sea Level, CO2 Atmospheric Levels, Antarctic Temperatures, Glacier Volumes, and Oceanic Water Salinity over time. The goal of this app is to help city council members budget expenses towards construction, and help project managers predict how much height should be added to buildings, plumbing, and HVAC systems. And, of course, correlation does not prove causation, so this app is meant to only be a prediction.

### <ins>Data Sets:</ins>
https://data.giss.nasa.gov/pub/gistemp/antarc3.txt
The temperature of Butler Island, West Antarctica

https://pkgstore.datahub.io/core/sea-level-rise/csiro_alt_gmsl_mo_2015_csv/data/dc258c2039d8 b640f74efd3d23e1c920/csiro_alt_gmsl_mo_2015_csv.csv
Global Mean Sea Level Data 

http://scrippso2.ucsd.edu/assets/data/co2_data/co2_monthly/altc.txt
Carbon Dioxide Concentration in Atmosphere

https://climate.nasa.gov/vital-signs/ice-sheets/
Glacier Mass Decline Over Time

### <ins>nhtempdata.m</ins>
Since we used four data sets, we used fprintf for all of them, but for this one, lines 6-16 implement file storage and an fprintf statement to write the Arctic temperature data into a new file called somethingcool.dat:

//


### <ins>sealevels.mlapp</ins>
On line 88 of the app, we plot the sea level data against time, and set the axes so that the data can be interpreted easily and meaningfully:

//


### <ins>How to Run our Program</ins>

//

1. Click the “LOAD DATA” button
    * Calls functions that interpret the large data sets

2. Select the Time drop-down and choose between the two options: past or future.
    * The “Past” dropdown shows a selection of buttons that allow the user to choose
    which datasets they would like to see individually graphed over time. Each dataset has a different y-axis measurement: Sea Level, centimeters; Arctic Temperature, Celsius; Glacier Mass, Gigatons; CO2 levels, ppm. The All button shows a superimposed image of all the datasets together for easier comparison.
    
    * The “Future” dropdown shows extrapolated data for sea level up until 2100, and shows estimates on when various cities around the world will be underwater.

### <ins>Example graph, “Sea Level,” in the “Past” dropdown:</ins>

//


### <ins>The “All” button:</ins>

//


### <ins>“Future” dropdown:</ins>

//

