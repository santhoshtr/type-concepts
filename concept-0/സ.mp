outputtemplate := "%j.svg";
outputformat   := "svg";
beginfig(0);
width:=8;
rotation:=40;

pen calligraphicpen ;
calligraphicpen := makepen ((0, 0)--(width,0 ) rotated rotation) ;

z0 = (x1+5, 0);
z1 = (0, y0+5);
z2 = (x1, y1+20);
z3 = (x2+5, y2+5);
z4 = (x3 + 5, y3);
z5 = (x4 + 5, y4-5);
z6 = (x5, y0);

pickup calligraphicpen;
draw z0{left}..z1--z2{up}..z3--z4{right}..z5--z6 withcolor 0.5blue;
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
draw z7{up}..z8--z9{right}..z10--z11{down}..z12--z13{right}..z14--z15{up}..z16 withcolor 0.5red;

endfig;
end