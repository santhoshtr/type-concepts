beginfig(0);

pickup pencircle scaled 20;

z0 = (x1+50, 0);
z1 = (10, y0+50);
z2 = (x1, y1+200);
z3 = (x2+50, y2+50);
z4 = (x3 + 50, y3);
z5 = (x4 + 50, y4-50);
z6 = (x5, y0);

draw z0{dir 170}..{dir 100}z1..z2{dir 80}..z3{dir 10}..{dir -10}z4{right}..z5--z6 withcolor 0.9blue;
z7 = (x5, y5);
z8= (x7+50, y4);
z9= (x8+25, y8);
z10= (x9+50, y9-50);
z11= (x10, y0+50 );
z12 =(x11+50, y0);
z13=(x12+25, y12);
z14=(x13+50, y13+ 50);
z15=(x14, y14+ 200);
z16=(x15-50, y4);

draw z7{up}..z8{dir 10}..z9{dir -10}..{dir -80}z10..z11{dir -80}..z12{dir -10}..z13{dir 10}..z14{dir 80}..z15{dir 100}..z16 withcolor 0.9blue;

endfig;
end