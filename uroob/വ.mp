input plain_ex;

beginfig(0);
p:=0;
thick:= 20;
thin:= thick*0.5;
vardef thick_nib = fix_nib(thick, 0, 0) enddef;
vardef thin_nib = fix_nib(0, thin, 0) enddef;
path paths[], strokes[];

m:=100;
z0 = (x1+m/4, 0);
z1 = (0, (y0+y3)/4);
z2 = (x1, 3(y0+y3)/4);
z3 = ((x2+x4)/2, m);
z4 = (x2+3/4m, y2);
z5 = (x4, y1);
z6 = (x5-m/4, y0);
paths[p] = z0{left}..z1---z2..z3{right}..z4---z5..{left}z6;
pen_stroke(
    cut(thin_nib, 90)(0)
    nib(thick_nib)(1,2,4,5)
    nib(thin_nib)(3)
    cut(thin_nib, 90)(6)
)(paths[p])(strokes[p]);

draw strokes[0] withcolor 0.8white;
fill strokes[0] withcolor blue;

clearxy;
p:=p+1;
z0=(xpart point infinity of paths[p-1] + thin, thick/2-thin/2);
z1=z0+(m/2,0);
paths[p] = z0--z1;
pen_stroke(
    cut(thick_nib rotated 90, 45)(0)
    cut(thick_nib rotated 90, 90)(1)
)(paths[p])(strokes[p]);

draw strokes[p] withcolor 0.8white;
fill strokes[p] withcolor blue;

clearxy;
p:=p+1;
z0=(xpart point infinity of paths[p-1] + thin, -thin/2);
z1=(x0,m);
paths[p] = z0--z1;
pen_stroke(
    cut(thick_nib, 0)(0)
    cut(thick_nib, 0)(1)
)(paths[p])(strokes[p]);

draw strokes[p] withcolor 0.8white;
fill strokes[p] withcolor blue;

endfig;
end