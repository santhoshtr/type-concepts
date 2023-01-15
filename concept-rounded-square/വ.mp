beginfig(0);


pickup pencircle scaled 10;

z0 = (x1+50, 0);
z1 = (10, y0+50);
z2 = (x1, y1+200);
z3 = (x2+50, y2+50);
z4 = (x3 + 50, y3);
z5 = (x4 + 50, y4-50);
z6 = (x5, y0+50);
z7 = (x6-50, y0);

path p[];
p[0] = z0{left}..{up}z1..z2{up}..z3--z4{right}..z5--z6{down}..{left}z7;
p[0]:= p[0] shifted (10,10);
draw p[0] withcolor 0.8red;

clearxy;
z0=point infinity of p[0];
z1 = (x0+100, y0);
z2 = (x1+50, y1+50);
z3 = (x2, y1+300);
p[1] = z0--z1{right}..{up}z2--z3;

draw p[1] withcolor 0.8red;

endfig;
end