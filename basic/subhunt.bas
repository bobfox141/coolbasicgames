15 clear screen 
16 gosub 5000 
17 gosub 4000
19 DIM C$(12), FS(36), FC(36)
20 clear screen 
   print  "DO YOU WANT THE PLAYERS' SCORES KEPT" 
   print " SEPARATELY (S) OR TOGETHER (T)? ";
30 GOSUB 3000
   if  G$="T"  then  TC = -1 
else   if  G$ <> "S"  then  goto 30
40 print 
   print 
   print  "NUMBER OF PLAYERS (1 TO 6)? ";
41 GOSUB 3000 
   if  ASC (G$)< 49 or ASC (G$) > 54  then  goto 40
else  N = VAL(G$)
50 RESTORE
51 MS=8
   W0=6
   print 
52 rem RANDOM
   for I = 0 TO 11
       READ C$(I) 
   NEXT I 
   for I = 1 TO 36 
       READ FS(I), FC(I) 
   NEXT I
53 if  not TC  then 
       for I = 1 TO N
54         input  "PLAYERS NAME:" P$(I)
55         for M = 1 TO 100 
	   next M 
       next I
70     clear screen
       W = W0*N 
       SN = N
       SD(0)=RND(3)
       for I = 1 TO N
	   C(I)=0
	   WU(I)=0
	   SS(I)=RND(3)
	   SR(I)=2
	   SD(I)=4
	   SW(I)=W0
	   G(I)=-1
       NEXT I
       K=-1
       for I = 1 TO N
80         SK(I)=RND(N)
	   if G(SK(I)) then G(SK(I))=0
	   endif
       NEXT I
else  goto 80
90 K=K+1
   S(K)=-1
   SC(K)=RND(8)+1
100 SX(K)=2*RND(47)+30
    SY(K)=RND(44)+1
    I=K
    gosub 590
    if  K = 0  then goto 110 
else
    for J = 0 TO K-1
            kk = ( PP(K) = PP(J) ) or PP(K) = ( PP(J) - 1 ) 
            jj = PP(K) = PP(J) + 1
           if kk or jj then goto 100
       end if
   
      NEXT J
   endif
110    if K<=N then goto 90
else clear
if not TC and N>1 then  print at (4,0),"SKIPPERS  for THIS GAME"
print 
for I = 1 TO N
print CHR$(64+I)" "P$(SK(I))
NEXT I
for M = 1 TO N * 500
next M
NEXT I
120 I = 0
130 I = I+1
    if NOT S(I) OR ( NOT TC AND SW(I)=0 ) then 240
    else gosub 530
         gosub 340
         gosub 850
 endif
if NOTS(I) then 240
140 print @704,"SPEED";
    print @769,"0 TO"MS"? ";
    gosub 3000
    if ASC(G$)<48ORASC(G$)>48+MS then gosub 560
        GOTO 140
    else G=VAL(G$)
    gosub 560
if G<0 or G<SS(I) - 2 OR G>SS(I) + 2 OR G>MS then goto 140
else SS(I)=G
print at (8,6),G;
150 print @704,"COURSE";
    if SS(I)>2 then G=1
else G=2
160 print @768,;
    L1=SC(I)-G
    L2=SC(I)+G
    forL=L1TOL2
    print C$(L)" ";
NEXT
170 print @832,"? ";
    gosub 3500
    gosub 560
    if G$="" then 200
else  if G$="NE" then H=2
else  if G$="E" then H=3
else  if G$="SE" then H=4
else  if G$="S" then H=5
else  if G$="SW" then H=6
else  if G$="W" then H=7
else  if G$="NW" then H=8
else  if G$="N" then H=9
else 160
180 if H<L1 then G=H+8
else  if H>L2 then G=H-8
else G=H
190 if G>=L1ANDG<=L2 then SC(I)=H
    print @583,C$(SC(I))" ";
else 150
200 if SS(I)>0 gosub 630
210 gosub 340 
    gosub 680
    if SW(I)=0 then 240
212 print @775," ";
    print @704," FIRE?";
    print @769,"(Y/N) ";
    gosub 3000
    if G$="Y" then 220
else  if G$="N" then 240
else 212
220 print @775," ";
    print @704,"SHOOT?";
    print @769,"(R/D) ";
    gosub 3000
    gosub 560
    if G$="" then 240
else  if G$="R" then  if SR(I)=0ORR<2 then 220
else gosub 410
else  if G$="D" then  if SD(I)=0 then 220
else gosub 490
else 220
230 SC(0)=RND(8)+1
    if SW(I)=0 then  print @704,"**********";
    print @768," SHIP HAS";
    print @832,"NO WEAPONS";
    print @896,"**********";
    forM=1TO2000
NEXT
240 if I<NANDW>0 then 130
else  if W>0 then I=0
GOTO130
else  forL=1TO6
print @704,"**********";
print @768,"GAME OVER";
print @832,"NO wEAPONS";
print @896,"**********";
forM=1TO400
NEXT
gosub 560
forK=1TO100
NEXTK,L
260 clear
    print 
    print 
    print ,"GAME","WEAPONS"
    print ,"SCORE","USED"
    print 
    if TC then CC=0
    WU(7)=0
    forI=1TON
    CC=CC+C(I)
    WU(7)=WU(7)+WU(I)
NEXT
print "DESTROYERS",CC,WU(7)
GOTO310
270 forJ=1TON
    G(J)=-1
    H(J)=0
    CC(J)=0
    WW(J)=0
NEXT
I=1
280 forJ=ITON
    if G(J)ANDP$(I)=P$(J) then CC(I)=CC(I)+C(J)
    G(J)=0
    H(I)=-1
    WW(I)=WW(I)+WU(J)
290 NEXTJ
    if H(I) print P$(I),CC(I),WW(I)
300 if I<N then I=I+1
    GOTO280
310 print 
    print "SUBMARINE",C(0),WU(0)
320 print 
    print 
    print "ANOTHER GAME(Y/N)? "
    gosub 3000
    if G$="Y" then 20
else  if G$<>"N" then 320
else 6000
340 R=SQR((.5*(SX(I)-SX(0)))[2+(SY(I)-SY(0))[2)
    ONERRORGOTO1020
350 if R=INT(T/9)RESET(X+1,Y)
    RESET(X-1,Y)
390 NEXT
    ONERRORGOTO0
    gosub 560
    RETURN
410 G=0
    print @704,"DIRECTION?";
    print @769,;
    input "(1 TO 36)";G
    gosub 560
    if G<1ORG>36 then 410
else X=SX(I)+INT(2*R*FS(G)+.5)
Y=SY(I)-INT(R*FC(G)+.5)
420 gosub 610
    SR(I)=SR(I)-1
    print @391,SR(I);
    SW(I)=SW(I)-1
    WU(SK(I))=WU(SK(I))+1
    W=W-1
    print @704,"************";
    S(I)=0
    forJ=X1TOX2STEP2
    forK=Y1TOY2
    forL=NTO0STEP-1
    if S(L) then  if SX(L)=JANDSY(L)=K then GOTO450
430 NEXTL,K,J
    S(I)=-1
    print @768,"    MISS";
440 forM=1TO4000
NEXT
if SN=0 then 830
else RETURN
450 print @768,"DIRECT HIT!";
    if L=0 then 460
else S(L)=0
SN=SN-2
C(SK(I))=C(SK(I))-2
S(L)=0
W=W-SW(I)-SW(L)
print @832,"DESTROYER "CHR$(64+L);
print @896,"************";
print @960,P$(SK(I))" TO THE BRIG!";
GOTO440
460 C(SK(I))=C(SK(I))+1
    print @832,"SUBMARINE";
470 forM=1TO2000
NEXT
GOTO260
490 print @704,"DEPTH?";
    print @769,;
    print "(1/2/3) ";
    gosub 3000
    gosub 560
    if ASC(G$)<49ORASC(G$)>51 then 490
else G=VAL(G$)
if G<1ORG>3 then 490
else X=SX(I)
Y=SY(I)
gosub 610
if G=SD(0) forJ=X1TOX2STEP2
forK=Y1TOY2
if SX(0)=JANDSY(0)=K then G=0
else NEXTK,J
500 SD(I)=SD(I)-1
    print @455,SD(I);
    SW(I)=SW(I)-1
    WU(SK(I))=WU(SK(I))+1
    W=W-1
    print @704,"***********";
    if G=0 then  print @768,"DIRECT HIT!";
    C(SK(I))=C(SK(I))+1
    GOTO510
else  print @768,"   MISS";
510 forM=1TO2000
NEXT
if G=0 then 260
else RETURN
530 clear
    print "SUB  HUNT 1.0"
    print 
    print "DESTROYER "CHR$(64+I)
    if TC then  print 
    print 
else  print "SKIPPER"
print " "P$(SK(I))
540 print 
    print "ROCKETS"SR(I)
    print "DP CHGS"SD(I)
    print "SPEED "SS(I)
    print "COURSE "C$(SC(I))
560 print @704,CHR$(31);
    forJ=1TON
    if S(J)AND(TCORSW(J)>0)SET(SX(J),SY(J))
    print @PP(J),CHR$(64+J);
570 NEXT
    RETURN
590 PP(I)=64*INT(SY(I)/3)+INT(SX(I)/2)+1
    RETURN
610 ONERRORGOTO1020
    C1=C1+1
    X1=X-2
    X2=X+2
    Y1=Y-1
    Y2=Y+1
    forJ=X1TOX2
    forK=Y1TOY2
    C2=C2+1
    SET(J,K)
    C3=C3+1
    NEXTK,J
    SET(X-3,Y)
    SET(X+3,Y)
    ONERRORGOTO0
    RETURN
630 print @PP(I)," ";
    J=I
    S(I)=0
    K=1
640 RESET(SX(I),SY(I))
    gosub 720
    L=1
650 if S(L)ANDSX(I)=SX(L)ANDSY(I)=SY(L) then S(L)=0
    W=W-SW(I)-SW(L)
    C(SK(I))=C(SK(I))-2
    SN=SN-2
    print @704,"*********";
    print @768,"COLLISION";
    print @832,"*********";
    forM=1TO2000
NEXT
if SN=0 then 830
else GOTO240
else L=L+1
if L<=N then 650
660 SET(SX(I),SY(I))
    forM=1TO100
NEXT
K=K+1
if K<=SS(I) then 640
else gosub 590
print @PP(I),CHR$(64+I);
S(I)=-1
RETURN
680 J=0
    GG=0
    gosub 720
690 if GG then G=RND(3)
    if SX(0)<34 then SC(0)=G+1
else  if SX(0)>123 then SC(0)=G+5
else  if SY(0)<2 then SC(0)=G+3
else  if SY(0)>45 then SC(0)=G+7
if SC(0)=10 then SC(0)=2
700 RETURN
720 X=SX(J)
    Y=SY(J)
    ONSC(J)GOTO720,730,740,750,760,770,780,790,800
730 X=X+2
    Y=Y-1
    GOTO810
740 X=X+2
    GOTO810
750 X=X+2
    Y=Y+1
    GOTO810
760 Y=Y+1
    GOTO810
770 X=X-2
    Y=Y+1
    GOTO810
780 X=X-2
    GOTO810
790 X=X-2
    Y=Y-1
    GOTO810
800 Y=Y-1
810 if X<30ORX>125ORY<0ORY>47 then GG=-1
    RETURN
else SX(J)=X
SY(J)=Y
RETURN
830 gosub 560
    forLL=1TO6
    print @704,"*********";
    print @768,"GAME OVER";
    print @832,"NO SHIPS!";
    print @896,"*********";
    forM=1TO400
NEXT
gosub 560
forM=1TO200
NEXTM,LL
GOTO260
840 ***TESTSUBMARINESHOOT
850 GG=0
    K=1
    J=1
    SC(7)=SC(0)-1
860 if NOTS(J) then 910
else DY=SY(J)-SY(0)
DX=(SX(J)-SX(0))/2
if ABS(DY)>SD(0)ORABS(DX)>SD(0) then ONSC(7)GOTO870,880,890,900,870,880,890,900,870,880
else 910
870 if ABS(DX)>1 then 910
else  if DY>0 then SC(7)=5
GOTO930
else SC(7)=9
GOTO930
880 if -DX<DY-1OR-DX>DY+1 then 910
else  if DX>0 then SC(7)=2
GOTO930
else SC(7)=6
GOTO930
890 if ABS(DY)>1 then 910
else  if DX>0 then SC(7)=3
GOTO930
else SC(7)=7
GOTO930
900 if DX>DY-2ANDDX<DY+2 then  if DX>0 then SC(7)=4
    GOTO930
else SC(7)=8
GOTO930
910 if J<N then J=J+1
    GOTO860
else  if K<3 then J=1
K=K+1
SC(7)=SC(7)+1
GOTO860
else RETURN
930 print at (11,4),"**********";
    print at (12,8)," TORPEDO!";
    print at (13,2),"**********";
    J=7
    SX(7)=SX(0)
    SY(7)=SY(0)
    SC(0)=RND(8)+1
    forK=1TON
    gosub 720
NEXT
L=1
GG=0
WU(0)=WU(0)+1
940 if S(L)ANDSX(7)=SX(L)ANDSY(7)=SY(L) then 970
else  if L<N then L=L+1
GOTO940
950 RESET(SX(7),SY(7))
    gosub 720
    if GG then  print @704,CHR$(31);
    gosub 560
    RETURN
else SET(SX(7),SY(7))
L=1
GOTO940
endif
970 gosub 610
    print @896,"DIRECT HIT";
    print @960,"DESTROYER "CHR$(64+L);
    S(L)=0
    W=W-SW(L)
    C(0)=C(0)+1
    SN=SN-1
    forM=1TO2000
NEXT
if SN=0 then 830
else clear
gosub 530
RETURN
980 DATA"NW","N","NE","E","SE","S","SW","W","NW","N","NE","E"
990 DATA.173648,.984808,.34202,.939693,.5,.866025,.642788,.766044,.766044,.642788,.866025,.5,.939693,.34202,.984808,.173648,1,0,.984808,-.173648,.939693,-.34202,.866025,-.5,.766044,-.642788,.642788,-.766044,.5,-.866025,.34202,-.939693,.173648,-.984808
1000 DATA0,-1,-.173648,-.984808,-.34202,-.939693,-.5,-.866025,-.642788,-.766044,-.766044,-.642788,-.866025,-.5,-.939693,-.34202,-.984808,-.173648,-1,0,-.984808,.173648,-.939693,.34202,-.866025,.5,-.766044,.642788,-.642788,.766044,-.5,.866025
1010 DATA-.34202,.939693,-.173648,.984808,0,1
1020 RESUMENEXT
3000 REM
3010 G$=INKEY$
3015 if G$="" then 3010
3020 print G$;
3030 RETURN
3500 REM
3510 A$=""
3520 gosub 3000
3530 if G$=CHR$(13) then G$=A$
     RETURN
3540 A$=A$+G$
3550 GOTO3520
4000 clear
     print 
     print 
     print 
     print "DO YOU WANT THE RULES(Y/N)? ";
     gosub 3000
     if G$="N" then RETURN
 else  if G$<>"Y" then 4000
4010 clear
     print 
     print "THE OBJECT OF SUB HUNT IS TO FIND AND DESTROY AN ENEMY"
     print "SUBMARINE.  ONE TO SIX PLAYERS CAPTAIN DESTROYERS WHILE THE"
4020 print "COMPUTER CONTROLS THE SUBMARINE."
     print 
     print "EACH DESTROYER IS EQUIPPED WITH AN ACCURATE SONAR"
     print "WHICH WILL PROVIDE YOU WITH THE DISTANCE TO THE SUBMARINE"
4030 print "BUT NOT THE DIRECTION.  SO YOU AND YOUR FELLOW PLAYERS MUST"
     print "TRY TO DEDUCE THE SUB'S POSITION WHICH IS CONSTANTLY CHANGING."
4040 print 
     print 
     print "PRESS <ENTER> TO CONTINUE"
     gosub 3000
4050 clear
     print 
     print "YOUR SHIP CAN MOVE FROM 0 TO 8 UNITS A TURN, BUT CAN ONLY"
     print "SPEED UP OR SLOW DOWN 2 SPEED UNITS PER TURN.  WHEN A SHIP"
4060 print "IS MOVING 2 UNITS/TURN OR LESS, YOU MAY MAKE CHANGES IN"
     print "COURSE OF UP TO 90 DEGREES.   if  YOUR SHIP IS MOVING MORE THAN"
4070 print "2 UNITS/TURN, A MAXIMUM CHANGE OF DIRECTION OF 45 DEGREES"
     print "IS PERMITTED."
     print 
     print 
4080 print "PRESS <ENTER> TO CONTINUE ";
     gosub 3000
4090 clear
     print 
     print 
     print "YOU HAVE TWO WEAPONS WITH WHICH TO DESTROY THE SUB.  EACH"
     print "DESTROYER IS EQUIPPED WITH DEPTH CHARGES(D) WHICH EXPLODE"
4100 print "DIRECTLY BENEATH THE FIRING SHIP.  THE DEPTH CHARGES MUST BE"
     print "SET TO EXPLODE AT ONE OF THREE D if FERENT DEPTHS.  EACH SHIP"
4110 print "IS ALSO EQUIPPED WITH TWO ANTISUBMARINE ROCKETS(R).  THESE"
     print "WEAPONS AUTOMATICALLY TRAVEL THE CORRECT DISTANCE AND DEPTH"
4120 print "TO THE SUB BUT MUST BE ACCURATELY AIMED.  SPEC if Y THE ANGLE"
     print "OF FIRE BY ENTERING A NUMBER BETWEEN 1 AND 36.  NORTH IS 36,"
4130 print "EAST IS 9, SOUTH IS 18 AND WEST IS 27."
     print 
     print 
     print 
4140 print "PRESS <ENTER> TO CONTINUE "
     gosub 3000
4150 clear
     print 
     print 
     print "THE SUB IS ARMED WITH DEADLY TORPEDOES AND WILL NOT"
     print "HESTITATE TO USE THEM.  GOOD LUCK & GOOD HUNTING!"
     print 
     print 
     print 
4160 print "PRESS <ENTER> TO BEGIN..."
     gosub 3000
     RETURN
5000 print "SUB HUNT"
5010 print "COPYRIGHT BY"
5020 print "CREATIVE COMPUTING"
5030 print "P.O. BOX 789-M"
5040 print "MORRISTOWN, NEW JERSEY 07960"
5050 for I = 1 TO 2000
     NEXT I
     RETURN
6000 clear
     print @448,"THANK YOU  for  PLAYING !!!"
     for X = 1 TO 400
     NEXT
     RUN"MENU"
 END
