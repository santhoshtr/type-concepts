beginfig(0);
width:=8;
rotation:=40;

pickup pencircle scaled 10;

z0 = (x1+50, 0);
z1 = (0, y0+50);
z2 = (x1, y1+200);
z3 = (x2+50, y2+50);
z4 = (x3 + 50, y3);
z5 = (x4 + 50, y4-50);
z6 = (x5, y0);


draw z0{left}..z1--z2{up}..z3--z4{right}..z5--z6 withcolor 0.5blue;

z7 = (x5, y5);
z8= (x7+50, y4);
z9= (x8+2.5, y8);
z10= (x9+50, y9-50);
z11= (x10, y0+50 );
z12 =(x11+50, y0);
z13=(x12+25, y12);
z14=(x13+50, y13+ 50);
z15=(x14, y14+ 200);
z16=(x15-50, y4);

draw z7{up}..z8--z9{right}..z10--z11{down}..z12--z13{right}..z14--z15{up}..z16 withcolor 0.5red;

endfig;
end