input plain_ex;
input nibs;

beginfig(0);

path paths[], strokes[];

z0 = (0, 10);
z1 = (x0-10, (y0+y2)/2);
z2 = ((x1+x3)/2, 150);
z3 = (x1+125, y1);
z4 = (x3-10, y0);
paths[0] = z0..z1..z2{right}..z3..z4;
pen_stroke(
    nib(terminal_thick_nib)(0)
    nib(thick_nib)(1,3)
    nib(thin_nib rotated 90)(2)
    nib(terminal_thick_nib)(4)
)(paths[0])(strokes[0]);

draw strokes[0] withcolor 0.8white;
fill strokes[0] withcolor blue;

endfig;
end