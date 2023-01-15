outputtemplate := "svgs/%j.svg";
outputformat   := "svg";
beginfig(0);

pickup pencircle scaled 2;

z0 = (x1+5, 0);
z1 = (10, y0+5);
z2 = (x1, y1+20);
z3 = (x2+5, y2+5);
z4 = (x3 + 5, y3);
z5 = (x4 + 5, y4-5);
z6 = (x5, y0);

draw z0{dir 170}..{dir 100}z1..z2{dir 80}..z3{dir 10}..{dir -10}z4{right}..z5--z6 withcolor 0.9blue;
z7 = (x5, y5);
z8= (x7+5, y4);
z9= (x8+2.5, y8);
z10= (x9+5, y9-5);
z11= (x10, y0+5 );
z12 =(x11+5, y0);
z13=(x12+2.5, y12);
z14=(x13+5, y13+ 5);
z15=(x14, y14+ 20);
z16=(x15-5, y4);

draw z7{up}..z8{dir 10}..z9{dir -10}..{dir -80}z10..z11{dir -80}..z12{dir -10}..z13{dir 10}..z14{dir 80}..z15{dir 100}..z16 withcolor 0.9blue;

endfig;
end