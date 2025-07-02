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
rem choose the car data 
320 print
330 for i = 1 to c1: read b, m, s: let b = b / 10 : next i
340 let a1 = .5
350 let m1 = 0
360 let c1 = c1 / 2
370 let V = 0
380 let r1 = 0 
390 let t = 0 
400 let d = 0
410 let q1 = 0

rem more messages 
420 print "present velocity = "; v ; " No. of gallons = "; a1
430 print "No. of miles = "; m1; "Time passed = "; t; " seconds."
440 if m1 >= 5 then goto 1460
    endif 
450 print "What is your new throttle rate: "; 
460 input g 
470 if g < -10 then print "Rate not valid " : goto 460
    endif
480 if g > 10 then print "Rate not valid " : goto 460
    endif
490 if g < 9 then goto 520
    endif
500 let z = z + 1
510 if z > 4 then print "Dummy, you blew your engine!!!!" : goto 1270
    endif 
520 let z = 0     rem this lets the logic know that backs off the throttle to save the engine 
530 let v = int(r*g - m*v + v)
540 let i = i + 10 
550 print 
560 print "Road Conditions: ";
570 if v > 0 then goto 590  rem %%TODO%% fix this
    endif 
580 let v = 0  
590 let m1 = m1 + v / 460  rem this is problem some gals/sec magic number
600 if g < 0 then goto 890
    endif
610 let a1 = a1 - (g * s) / 5000
620 
630 if m1 >= 5 then goto 1460 rem completed 5 laps I think
    endif
640 if a1 < 0 then goto 1380 
    endif
650 if r1 = 1 then goto 1050
    endif
660 if g1 = 1 then goto 980 
    endif
670 let q = int ((c2 + 1) * rnd(X))
680 let r = int ((3.75-c2) * rnd(x))
690 if r > 0 then goto 1290
    endif
700 if g > 0 then goto 1340
    endif
710 print "Clear and straight"
720 print
730 goto 620  rem ---> this is the gaming main loop end. 
740 let h = int (15+35.* rnd(x))
750 let h = h + 5 * c1
760 if v > h then goto 1500 %%FIXME%%
    endif 
770 print "Through the curve"
780 print 
790 let q1 = 0 
800 goto 620  rem ---> another gaming end loop 
810 let e = e = (V - D) * 3.0 
820 if e < 0 then goto 1100 %%fixme%%
    endif 
830 print "Vehicle "; e; " feet ahead."
840 print 
850 goto 620 rem ---> another game loop end
860 if v - d < 5 then goto 1180
    endif 
870 print "Vehicle passed by:";
880 let d = v - D
890 print d
900 print " mph"
910 print 
920 let r1 = 0
930 goto 620 rem ---> another game loop end
940 print "Vehicle being passed "
950 let d = int(25+40*rnd(x))
960 print "Greyhound Bus in other lane ";
970 print "doing ";
980 print d; 
990 print " mph";
1000 let d = v + c
1010 print "Crash velocity: ";
1020 print d
1030 print "What type of flowers do you wish at your funeral??"
1040 goto 1560 rem --> you died.
1050 print "Vehicle ahead 1000 feet." 
1060 print
1070 let d = int(25 + 35 * rnd(x))
1080 let r1 = 1
1090 goto 620 rem ---> another game loop end
1100 print "Warning Curve ahead"
1110 let q1 = 1 
1120 print 
1130 goto 620 rem ---> another game loop end
1140 print "Excellent, but wait!"
1150 print 
1160 print "Turkey!!! You ran out of gas!!"
1170 goto 1550 
1180 print "I don't know how, but you made it."
1190 print 
1200 let r1 = 0
1210 goto 620 rem ---> another game loop end
1230 print "The Finish Line"
1240 print 
1250 print "You are lucky this year!!"
1260 goto 1560
1270 Print "ARF Terrible"
1280 let h = h - 5 * c1 
1290 print h; " was the speed through the curve."
1300 print v; " was your speed, by the way"
1310 goto 1030 rem %%CHECKME%% this should be right
1320 print "You lead footed #$!@$%@@@$&&%!!!"
1330 print "You want to try again, right???"
1340 print "1 = yes, 2 = no"
1350 input v 
1360 if v = 2 then goto 1650 
     endif 
1370 n2 = 1 
1380 goto 1640 
1390 print "Chicken!!!"
1400 goto 1700 
1410 restore 
1420 goto 220 rem this starts the whole thing over. 
1430 data 45,.53,10
1440 data 60,.5,13
1450 data 70,.41,15
1460 data 80,.39,18
1460 data 85,.35,19
1470 data 88,.32,21
1480 data 89,.30,22
1490 end




rem output, velocity, gallons, miles, time
rem input gas rate
rem update
rem blow engine, yes sorry
rem blow engine, no --->
rem won --> yes win messages -> go again
rem won --> not done
rem jump back to input gas rate.
