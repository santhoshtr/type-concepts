
input debug;
beginfig(0);

path p[];

m:=100;
z0 = (0, 0);
z1 = (x0, 0.75m);
z2 = (x1+m/6, m);
z3 = (x2+m/3, y2);
z4 = (x3+m/6, m/2);
z5 = (x4-m/3, 0.8y4);
z6 = (x5, m/4);
z7 = (x4+m/6, m/2);
z8 = (x7, m);
z9 = (x8+m/4, y8);
z10 = (x9, 0);
z11 = ((x2+x3)/2.2, y3-m/6);
z12 = (x0+m/4, y4);
z13 = (x12, y0);

p[0] = z0{dir 80}..z1{dir 100}..{right}z2..{right}z3{dir -60}..{dir -100}z4..{dir 2000}z5{dir 250}..{dir -30}z6 .. z7{dir 100}..z8--z9{dir -80}..{dir -80}z10--cycle;


draw p[0] withcolor 0.8white;
fill p[0] withcolor 0.9blue;
show_coordinates(p[0]);
show_controls(p[0]);

clearxy;
z0 = (xpart point 3 of p[0] - m/6, 0.8m);
z1 = (xpart point 1 of p[0] +m/3 , m/2);
p[1] = z0{dir 220}..{dir 0}z1{dir 40}..cycle;

draw p[1] withcolor 0.8white;
unfill p[1];

show_coordinates(p[1]);
show_controls(p[1]);
endfig;
end