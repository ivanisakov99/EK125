%The Debugging Game

%This program presents the user with a random selection and asks
%whether or not it is a "bug"

fprintf('\nWelcome to The Debugging Game\n')

%Initialize the array of test items. Each row has two strings - the name of
%an item and a 0 or 1 indicating whether it counts as a bug.
testvalues = ["spider" "1";"bumblebee" "1";"slipper lobster" "1";"wiretap" "1";...
    "labradoodle" "0";"glitch" "1";"pillbug" "1";"VW Beetle" "1";"Union label" "1";...
    "wasp" "1";"Gronkowski" "0";"feature" "0"];

%Select a random row of the array
[r, c]=size(testvalues);
selectrow=rand(r,1);   
testelement=testvalues(selectrow,1);

%Find the second entry in the selected row and convert it from a string to a
%number that can be used for logical tests
testanswer=str2double(testvalues(selectrow,2));

%Ask the user whether the element is a bug
fprintf('\nIs a %s a bug?\n',testelement)

%compare response to correct answer
response=input('Enter y for yes, n for no: ','s');
if response==('y'||'Y')
    if testanswer
        fprintf('Good catch! A %s is a bug!\n',testelement)
    else
        fprintf('Sorry, a %s isn''t a bug.\n',testelement)
    end
elseif response==('n'||'N')
    if testanswer
        fprintf('Actually, a %s IS a bug!\n',testelement)
    else
        fprintf('You''re right! A %s is NOT a bug!\n',testelement)
    end
else
    fprintf('I didn''t understand your answer.\n')
end
 
