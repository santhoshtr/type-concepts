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
z4 = (x2+0.6m, y2);
z5 = (x4, y1);
z6 = (x5, y0-thin/2);
paths[p] = z0{left}..z1---z2..z3{right}..z4---z5--z6;
pen_stroke(
    cut(thin_nib, 90)(0)
    nib(thick_nib)(1,2,4,5,6)
    nib(thin_nib)(3)
)(paths[p])(strokes[p]);

draw strokes[0] withcolor 0.8white;
fill strokes[0] withcolor blue;

clearxy;
p:=p+1;
z0=point 4 of paths[p-1];
z1=((x0+x2)/2,m);
z2=(x0+m/2,y0);
z3=(x2,m/4);
z4=((x3+x5)/2, 0);
z5=(x3+m/2, y3);
z6=(x5, y2);
z7=(x6-m/4, m);
paths[p] = z0{up}..z1..z2---z3..z4..z5---z6..z7;
pen_stroke(
    nib(thick_nib)(0,2,3,5,6)
    nib(thin_nib)(1,4)
    cut(thin_nib, 90)(7)
)(paths[p])(strokes[p]);

draw strokes[p] withcolor 0.8white;
fill strokes[p] withcolor blue;


endfig;
end