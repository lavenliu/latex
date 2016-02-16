size(130,0);
pair[] z={(0,0), (0,1), (2,1), (2,0), (1,0)};

draw(z[0]..z[1]..z[2]..z[3]..z[4]..cycle,
     grey+linewidth(5));
dot(z,linewidth(7));
