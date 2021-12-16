program project_by_scr;
uses crt,dos,graph;
{========= DRAW OBJECT =======}
type rys = object
               dr,mo,i,xx,yy,r,a,xg,yg,xm,ym,xss,yss:integer;
               x,y,rad:real;
               godz,min,sec:word;
               asd:string;
               procedure init_graph;
               procedure big_shield;
               procedure small_shield;
               procedure num;
               procedure whattime;
               procedure test_godz;
               procedure test_min;
               procedure test_sec;
               procedure wsk_godz(xu,yu:integer);
               procedure wsk_min(xu,yu:integer);
               procedure wsk_sec(xu,yu:integer);
               procedure wsk_clean;
               procedure wsk_dot;
               procedure writetime;
               procedure graphclose;
               procedure about;
               end;
{--------- INIT GRAPH ---------}
procedure rys.init_graph;
begin
     clrscr;
     dr:=detect;
     initgraph(dr,mo,'C:\TPWDB\BGI\');
end;
{--------- BIG SHIELD --------}
procedure rys.big_shield;
var
   s,u,g:integer;
   c:word;
begin
     r:=195;
     readln;
for g:=1 to 5 do begin
for s:=1 to 360 do
 begin
 rad:=(s*pi)/180;
 x:=320+sin(rad)*r;
 y:=240+cos(rad)*r;
 putpixel(round(x),round(y),red);
 delay(2);
 end;
 r:=r+1;
end;
delay(100);
for u:=1 to 40 do begin
if u<=10 then c:=4;
if (u>10) and (u<=35) then c:=0;
if u>35 then c:=4;
for s:=1 to 360 do begin
    rad:=(s*pi)/180;
    x:=320+sin(rad)*r;
    y:=240+cos(rad)*r;
    if (s mod 6)=0 then
    putpixel(round(x),round(y),c);
end;
r:=r-1;
end;
end;
{--------- SMALL SHIELD --------}
procedure rys.small_shield;
var
   s:integer;
begin
     r:=160;
for s:=1 to 360 do
 begin
 rad:=(s*pi)/180;
 x:=320+sin(rad)*r;
 y:=240+cos(rad)*r;
 putpixel(round(x),round(y),magenta);
 delay(2);
end;
end;

{----------- NUMBERS ----------}
procedure rys.num;
var
   s,u:integer;
begin
r:=180;
a:=6;
setcolor(white);
for s:=1 to 360 do
    begin
         rad:=(s*pi)/180;
         x:=320+sin(rad)*r-6;
         y:=240+cos(rad)*r;
         if (s mod 30)=0 then begin
         a:=a-1;
         if a<1 then a:=12;
         str(a,asd);
         outtextxy(round(x),round(y),asd);
         end;
    end;
end;
{----------- GRAPH CLOSE --------}
procedure rys.graphclose;
begin
     closegraph;
end;

{------- WHAT TIME IS IT? --------}
procedure rys.whattime;
var
   hour,minu,secu,sec100:word;
begin
     gettime(hour,minu,secu,sec100);
     godz:=hour;
     min:=minu;
     sec:=secu;
end;
{------- TIME TEST (HOUR) -------}
procedure rys.test_godz;
var
   radian,xs,ys:real;
begin
     CASE godz of
     1,13: begin
     radian:=(150*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     2,14: begin
     radian:=(120*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     3,15: begin
     radian:=(90*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     4,16: begin
     radian:=(60*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     5,17: begin
     radian:=(30*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     6,18: begin
     radian:=(0*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     7,19: begin
     radian:=(330*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     8,20: begin
     radian:=(300*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     9,21: begin
     radian:=(270*pi)/180;
     xs:=320+sin(radian)*120;
     ys:=240+cos(radian)*120;
     xg:=round(xs);
     yg:=round(ys);
     end;
     10,22: begin
     radian:=(240*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     11,23: begin
     radian:=(210*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
     12,0: begin
     radian:=(180*pi)/180;
     xs:=320+sin(radian)*70;
     ys:=240+cos(radian)*70;
     xg:=round(xs);
     yg:=round(ys);
     end;
end;
end;

{------- TIME TEST MINUTE -----}
procedure rys.test_min;
var
   radian,xs,ys:real;
begin
     CASE min of
1: begin
radian:=(174*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
2: begin
radian:=(168*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
3: begin
radian:=(162*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
4: begin
radian:=(156*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
5: begin
radian:=(150*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
6: begin
radian:=(144*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
7: begin
radian:=(138*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
8: begin
radian:=(132*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
9: begin
radian:=(126*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
10: begin
radian:=(120*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
11: begin
radian:=(114*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
12: begin
radian:=(108*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
13: begin
radian:=(102*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
14: begin
radian:=(96*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
15: begin
radian:=(90*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
16: begin
radian:=(84*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
17: begin
radian:=(78*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
18: begin
radian:=(72*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
19: begin
radian:=(66*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
20: begin
radian:=(60*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
21: begin
radian:=(54*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
22: begin
radian:=(48*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
23: begin
radian:=(42*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
24: begin
radian:=(36*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
25: begin
radian:=(30*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
26: begin
radian:=(24*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
27: begin
radian:=(18*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
28: begin
radian:=(12*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
29: begin
radian:=(6*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
30: begin
radian:=(0*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
31: begin
radian:=(354*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
32: begin
radian:=(348*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
33: begin
radian:=(342*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
34: begin
radian:=(336*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
35: begin
radian:=(330*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
36: begin
radian:=(324*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
37: begin
radian:=(318*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
38: begin
radian:=(312*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
39: begin
radian:=(306*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
40: begin
radian:=(300*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
41: begin
radian:=(294*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
42: begin
radian:=(288*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
43: begin
radian:=(282*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
44: begin
radian:=(276*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
45: begin
radian:=(270*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
46: begin
radian:=(264*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
47: begin
radian:=(258*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
48: begin
radian:=(252*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
49: begin
radian:=(246*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
50: begin
radian:=(240*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
51: begin
radian:=(234*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
52: begin
radian:=(228*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
53: begin
radian:=(222*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
54: begin
radian:=(216*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
55: begin
radian:=(210*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
56: begin
radian:=(204*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
57: begin
radian:=(198*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
58: begin
radian:=(192*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
59: begin
radian:=(186*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
0: begin
radian:=(180*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xm:=round(xs);
ym:=round(ys);
end;
     end;
end;
{------- TIME TEST SECOND -------}
procedure rys.test_sec;
var
   radian,xs,ys:real;
begin
     CASE sec of
1: begin
radian:=(174*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
2: begin
radian:=(168*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
3: begin
radian:=(162*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
4: begin
radian:=(156*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
5: begin
radian:=(150*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
6: begin
radian:=(144*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
7: begin
radian:=(138*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
8: begin
radian:=(132*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
9: begin
radian:=(126*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
10: begin
radian:=(120*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
11: begin
radian:=(114*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
12: begin
radian:=(108*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
13: begin
radian:=(102*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
14: begin
radian:=(96*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
15: begin
radian:=(90*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
16: begin
radian:=(84*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
17: begin
radian:=(78*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
18: begin
radian:=(72*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
19: begin
radian:=(66*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
20: begin
radian:=(60*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
21: begin
radian:=(54*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
22: begin
radian:=(48*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
23: begin
radian:=(42*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
24: begin
radian:=(36*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
25: begin
radian:=(30*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
26: begin
radian:=(24*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
27: begin
radian:=(18*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
28: begin
radian:=(12*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
29: begin
radian:=(6*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
30: begin
radian:=(0*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
31: begin
radian:=(354*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
32: begin
radian:=(348*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
33: begin
radian:=(342*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
34: begin
radian:=(336*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
35: begin
radian:=(330*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
36: begin
radian:=(324*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
37: begin
radian:=(318*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
38: begin
radian:=(312*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
39: begin
radian:=(306*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
40: begin
radian:=(300*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
41: begin
radian:=(294*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
42: begin
radian:=(288*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
43: begin
radian:=(282*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
44: begin
radian:=(276*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
45: begin
radian:=(270*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
46: begin
radian:=(264*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
47: begin
radian:=(258*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
48: begin
radian:=(252*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
49: begin
radian:=(246*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
50: begin
radian:=(240*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
51: begin
radian:=(234*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
52: begin
radian:=(228*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
53: begin
radian:=(222*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
54: begin
radian:=(216*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
55: begin
radian:=(210*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
56: begin
radian:=(204*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
57: begin
radian:=(198*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
58: begin
radian:=(192*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
59: begin
radian:=(186*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
0: begin
radian:=(180*pi)/180;
xs:=320+sin(radian)*140;
ys:=240+cos(radian)*140;
xss:=round(xs);
yss:=round(ys);
end;
end;
end;
{------- HOUR HAND -------}
procedure rys.wsk_godz(xu,yu:integer);
begin
     setcolor(green);
     line(320,240,xg,yg);
end;
{------- MINUTE HAND --------}
procedure rys.wsk_min(xu,yu:integer);
begin
     setcolor(blue);
     line(320,240,xm,ym);
end;
{------- SECOND HAND ---------}
procedure rys.wsk_sec(xu,yu:integer);
begin
     setcolor(yellow);
     line(320,240,xss,yss);
end;
{-------- CLEAN HAND ---------}
procedure rys.wsk_clean;
var
   xs,ys,radian,sx,sy:real;
   u:integer;
begin
     sx:=getmaxx div 2;
     sy:=getmaxy div 2;
     setcolor(black);
     setfillstyle(1,0);
     fillellipse(round(sx),round(sy),155,155);
     bar(1,1,100,15);
end;
{------- DOT ---------}
procedure rys.wsk_dot;
var
   xs,rr,ys:integer;
begin
     rr:=10;
     xs:=getmaxx div 2;
     ys:=getmaxy div 2;
     setfillstyle(1,0);
     fillellipse(xs,ys,rr,rr);
end;
{-------- TIME ------------}
procedure rys.writetime;
var
   aaa,bbb,ccc:string;
begin
     str(godz,aaa);
     str(min,bbb);
     str(sec,ccc);
     setcolor(yellow);
     outtextxy(5,5,aaa);
     outtextxy(25,5,':');
     outtextxy(40,5,bbb);
     outtextxy(60,5,':');
     outtextxy(70,5,ccc);
end;
{========= ABOUT =============}
procedure rys.about;
begin
     clrscr;
     textcolor(red);
     writeln('Written by Kamil Maraszczuk. Aka SCR');
     readln;
end;

{======= MAIN PROG ===========}
var
   s:rys;
   xxg,yyg,xxm,yym,xxs,yys:integer;
begin
     s.init_graph;
     s.big_shield;
     s.small_shield;
     s.num;
     repeat
     s.whattime;
     s.test_godz;
     s.test_min;
     s.test_sec;
     s.wsk_sec(s.xss,s.yss);
     s.wsk_min(s.xm,s.ym);
     s.wsk_godz(s.xg,s.yg);
     s.wsk_dot;
     s.writetime;
     delay(100);
     s.wsk_clean;
     until keypressed;
     s.graphclose;
     s.about;
     readln;
end.