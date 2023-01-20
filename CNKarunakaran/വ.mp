
input debug;
beginfig(0);

path p;

m:=100;
z0 = (0, 0);
z1 = (x0, 0.75m);
z2 = (x1+m/6, m);
z3 = (x2+m/3, y2);
z4 = (x3+m/6, m/4);
z5 = (x4+m/6, y4);
z6 = (x3+m/4, y3);
z7 = (x6+m/4, y6);
z8 = (x7, 0);
z9 = (x4-m/4, 0);
z10 = (x4-m/6, m/2);
z11 = ((x2+x3)/2.2, y3-m/6);
z12 = (x0+m/4, y4);
z13 = (x12, y0);

p = z0{dir 80}..z1{dir 100}..{right}z2..{right}z3..{dir -100}z4{dir -30}..{dir 60}z5{dir 60}..{up}z6 --z7{dir -95}..{dir -100}z8{dir 185}..{left}z9{dir 110}..{up}z10..z11..z12{dir -90}..{down}z13--cycle;


draw p withcolor 0.8white;
fill p withcolor blue;
show_coordinates(p);
show_controls(p);
endfig;
end