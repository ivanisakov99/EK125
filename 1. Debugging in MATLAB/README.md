# <ins>Problem:</ins>
Very often, the first time you try to run a program, something will go wrong. In some cases, the program will not run at all. In other cases, the program will 
run, but will not produce the expected result. Finding and fixing the "bug" (or bugs) in a program can be difficult. In this assignment, you will work with 
some of the debugging tools provided in MATLAB to fix a script that isn't working.

#### **Step 1**
Download the script for the homework, bugscriptBroken.m, from edX. You will need to save it in your MATLAB working directory. You can find (and change) 
your current directory in MATLAB here:

![Screenshot 2021-03-04 at 16 18 31](https://user-images.githubusercontent.com/60196280/110031727-46bc8300-7d05-11eb-85b4-de5a69a01a77.png)

#### **Step 2 - Get the Programme Running**
Read through the script first to get a general idea of what it is doing. Try running the script by typing the script name into the command window or by 
opening the script and clicking the Run arrow.
You will see an error message. Something is preventing the program from running. MATLAB provides a line number, but that isn't necessarily the origin of 
the problem – it could be earlier in the program.

Hints: Take a look at what line 17 is supposed to do (the comments in the script should help). Now, take a look at the variables in the workspace, especially
'selectrow.' You can double click on it to open it up. What type of variable do you expect 'selectrow' to be? Fix the assignment statement for 'selectrow.' 
Put a comment in explaining your fix, and save to a new code file called bugscriptWorking_Yournames.

#### **Step 3 - Get the Programme to Behave**
Try running the script again.
The script should now run and ask you a question, but it will produce an unexpected result. Even if you follow instructions and type "y" or "n", you will get the message "I didn't understand your answer."
If you look through the script, you will see that there are several "if" statements that produce different outputs, including the message you got. Chances are, something is going wrong with these statements!
Add a breakpoint to the first if statement by clicking next to the line number:

![Screenshot 2021-03-04 at 16 21 30](https://user-images.githubusercontent.com/60196280/110032051-b3378200-7d05-11eb-982c-e4791db43c22.png)

After adding the breakpoint, it will look like this:

![Screenshot 2021-03-04 at 16 21 58](https://user-images.githubusercontent.com/60196280/110032098-c4808e80-7d05-11eb-9f6e-1d48074fc935.png)

Now, when you run the program, it will stop at the breakpoint, and you can use the "Step" buttons to move through the program one step at a time and see 
what's happening:

![Screenshot 2021-03-04 at 16 22 31](https://user-images.githubusercontent.com/60196280/110032168-d5310480-7d05-11eb-95f7-e6ea6e78da2d.png)

Hints: if you type in 'y', you would expect the program to move to the nested if-statement. It doesn't, so that's an indication that there's something wrong with the first if-statement.
Take a screen shot to show the red dot next to your breakpoint as above, and to show the green arrow that you will see when stepping through the code.
As you step through the code, you can enter variable names and expressions on the command line to help you see what is wrong. Fix the code!

#### **Step 4 - Test the Programme**
Sometimes, bugs only appear in certain circumstances. That's why it's critical to test programs to make sure they function correctly in all expected cases.
Here, there are 5 possible situations that the program must handle:
1. The selected item is a bug, and the user answers correctly
2. The selected item is a bug, but the user says it isn't
3. The selected item is not a bug, and the user answers correctly
4. The selected item is not a bug, but the user says it is
5. The user enters something that isn't recognized as an answer
You should make sure that the program produces the correct output for each of the five situations.
Hints: because the program chooses a random item each time, it could take many runs to test all five situations, and it might be difficult to keep track of which ones you've successfully tested. Make your life easier! Temporarily comment out the line that assigns a random integer to 'selectrow' and add a line that allows you to specify which row will be selected. Then, you can quickly go through the five test situations. Once you're sure the program is working, comment out your testing line and remove the comment character from the random assignment statement.
