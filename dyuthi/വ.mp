input plain_ex;
input nibs;

beginfig(0);

path paths[], strokes[];

z0 = (0, y4+10);
z1 = (x0-10, (y0+y2)/2);
z2 = ((x1+x3)/2, 150);
z3 = (x1+125, y1);
z4 = (x3-10, 0);
paths[0] = z0..z1..z2{right}..z3..z4;
pen_stroke(
    nib(terminal_thick_nib)(0)
    nib(thick_nib)(1,3)
    nib(thin_nib rotated 90)(2)
    nib(thick_nib)(4)
)(paths[0])(strokes[0]);

draw strokes[0] withcolor 0.8white;
fill strokes[0] withcolor blue;

clearxy;
z0 = point infinity of paths[0] + (0, 5);
z1  = z0+ (75,0 );
paths[1] = z0..z1;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);

draw strokes[1] withcolor 0.8white;
fill strokes[1] withcolor blue;

clearxy;
z0 = point infinity of paths[1] + (0, -5);
z1  = z0+ (0, 150 );
paths[2] = z0..z1;
pen_stroke(
    nib(thick_nib scaled 1.2)(0)
    nib(terminal_thick_nib)(1)
)(paths[2])(strokes[2]);

draw strokes[2] withcolor 0.8white;
fill strokes[2] withcolor blue;

endfig;
end