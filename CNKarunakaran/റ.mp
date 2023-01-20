
input debug;
beginfig(0);

path p;

m:=100;
z0 = (0, 0);
z1 = (x0, 0.75m);
z2 = (x1+m/6, m);
z3 = (x2+m/3, y2);
z4 = (x3+m/6, 0);
z5 = (x4-m/4, 0);
z6 = (x5+m/8, m/2);
z7 = ((x2+x3)/2.2, y3-m/6);
z8 = (x0+m/4, y4);
z9 = (x8, y0);

p = z0{dir 80}..z1{dir 100}..{right}z2..{right}z3..{dir -85}z4--z5{dir 110}..{up}z6..z7{dir 210}..z8{dir -90}..{down}z9--cycle;


draw p withcolor 0.8white;
fill p withcolor blue;
show_coordinates(p);
show_controls(p);
endfig;
end