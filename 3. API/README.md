###<ins>Problem: Weather by MATLAB</ins>
In Section 9.4, you were introduced to the idea of Application Programming Interfaces (API’s). API’s are an important backbone piece for most applications you use; whether it is a mobile application such as Lyft or a web application like Facebook, API’s are used everywhere.

For this homework, we will be using the OpenWeatherMap’s API to access real time weather metrics. Your job will be to create an application to access, analyze, and present these metrics. Before getting started, we recommend familiarizing yourself with the API’s documentation available here: https://openweathermap.org/forecast5.

When requesting data from an API, there will usually be a query parameter or series of query parameters that are needed to access information. For example, on the Stock API question on MATLAB Grader, this API had a request parameter of ‘symbol’ with the code that followed. For the OpenWeatherMap API, two query parameters are needed: ‘APPID’ which has a key value that we will provide for you, and ‘q’ which is the City and Country code as a character vector, placed together in this exact format: ‘Boston,us’

For the APPID, please use the following key provided.

    key='70e9f383955e7372c06948520cd38387'

Overall, the url passed into the API should look like this:

    http://api.openweathermap.org/data/2.5/forecast?q=[CITY],[COUNTRY]&APPID=[KEY]

Where [CITY] is the desired city, [COUNTRY] is the two-letter country code, and [KEY] is the key.

Make a couple of practice requests to the API to familiarize yourself with the format of the data returned by the API call. A successful request from the API returns a single data structure containing all the information you will need for data analysis. You are responsible for appropriately indexing into the structure to access the information needed for the assignment. *Hint: When indexing into the structure to find the temperature data, you may realize that the organization of the structure is not always the same from city to city; and thus, different organizations of the structures will require different methods of indexing. To remedy this, we recommend using a try/catch statement. See the Mathworks website https://www.mathworks.com/help/matlab/ref/try.html  to learn about how to use try/catch to solve this problem.

