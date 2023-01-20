color debugcolor;debugcolor:=white;

% Show bezier controls
vardef show_controls (expr p) =
    for i=0 upto length(p):
        pair a;a:=point i of p;
        pair b;b:=point i+1 of p;
        draw (point i of p -- precontrol i of p)  withpen pencircle scaled 0.25 withcolor debugcolor;
        draw (point i of p -- postcontrol i of p)  withpen pencircle scaled 0.25 withcolor debugcolor;
    endfor;
enddef;


vardef show_coordinates (expr p) =
    defaultscale := 0.5;

    for i=0 upto length(p):
        pair a;a:=point i of p;
        string pointlabel;
        pointlabel := decimal(i) ;
        dotlabel.bot(pointlabel, a) withpen pencircle scaled 1 withcolor white;
    endfor;

enddef;