input plain_ex;

beginfig(0);

vardef thick_nib =  fix_nib(thick, thick, 0) enddef;

path paths[], strokes[];

m:=100;
z0 = (0, 0);
z1 = (x0-m/3, (y0+y2)/2);
z2 = ((x1+x3)/2, m);
z3 = (x1+m, y1);
z4 = (x3-m/3, y0 + thick*sind(45)/2);
paths[0] = z0..z1..z2{right}..z3..z4;
pen_stroke(
    nib(thick_nib)(0)
    nib(thick_nib)(1,3)
    nib(thick_nib rotated 90)(2)
    nib(thick_nib)(4)
)(paths[0])(strokes[0]);

draw strokes[0] withcolor 0.8white;
fill strokes[0] withcolor blue;


clearxy;
z0 = point infinity of paths[0];
z1  = z0+ (3/4m,0 );
z2  = z1+ (0, m );
paths[1] = z0--z1--z2;
pen_stroke(
    nib(thick_nib)(0)
    nib(thick_nib)(1)
    nib(thick_nib)(2)
)(paths[1])(strokes[1]);

draw strokes[1] withcolor 0.8white;
fill strokes[1] withcolor blue;


endfig;
end