#!/usr/bin/yabasic
rem 
rem The Car Rally
rem start and setup
rem some numbers have been changed from the original listing for clarity 
rem and simplicity
10 print 
20 print
30 print " The Car Rally - from Ken Tracton's "
40 print "24 Tested Ready to run game programs in basic." : print
50 print "This is the Super Car Rally, that all the drivers "
60 print "in the world wait for!!!! The driving is tough this year,"
70 print "and we all wish you the best of luck!!!"

rem input car and route
80 print "   Choice of Cars: "
90 print "Cooper Mini         [1]"
91 print "Lotus Esprit        [2]"
92 print "Pontiac Trans-Am    [3]"
93 print "Ferrari 308 GT      [4]"
94 print "Ford F40            [5]"
95 print "Renault Turbo 2     [6]"
96 print "Subaru WRX          [7]"
100 print "Choose the car by the number after it: "
110 print "The better the car the more fuel it uses."
120 print "Which car: ";
130 input c1
140 let c1 = int(c1)
150 if c1 < 1 or c1 > 7 then print "Invalid entry" : goto 120
    endif
160 print
    if n2 = 1 then goto 220 
    endif
170 print "You now choose the course you want to race on."
180 print "The courses go from easiest to hardest with 1" 
190 print "being the easiest and 5 being the hardest."
200 print "Course number 1 is mostly straight, Course number 5"
210 print "is mostly turns and twists."
220 print "Which course would you like to run [1 to 5]";
230 input c2
240 let c2 = int (c2)
250 if c2 < 1 or c2 > 5 then print "Invalid course" :goto 220
    endif
260 if n2 = 1 then goto 
270 print "You will need to travel 5 miles with .5 gallons of gas"
280 print "your status will be shown each 10 seconds, after each status"
290 print "check you will be asked for a new throttle position. 10"
300 print " is hard acceleration and -10 is hard braking. Any number between"
310 print "is allowable."
    
rem more messages 
rem output, velocity, gallons, miles, time
rem input gas rate
rem update
rem blow engine, yes sorry
rem blow engine, no --->
rem won --> yes win messages -> go again
rem won --> not done
rem jump back to input gas rate.
