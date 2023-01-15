outputtemplate := "svgs/%j.svg";
outputformat   := "svg";
beginfig(0);
width:=10;
rotation:=45;

pen calligraphicpen ;
calligraphicpen := makepen ((0, 0)--(width,0 ) rotated rotation) ;

z0 = (x1+15, 0);
z1 = (0, y0+25);
z2 = (x1+25, y1+25);
z3 = (x2+25, y1);
z4 = (x2, y0);
pickup calligraphicpen;
draw z0..z1..z2..z3..z4 withcolor blue;
endfig;
end