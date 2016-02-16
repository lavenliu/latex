size(130,0);
pair[] z={(0,0), (0,1), (2,1), (2,0), (1,0)};

path p=z[0]..z[1]..z[2]..z[3]..z[4]..cycle;

dot(z);
draw(p,lightgrey+linewidth(5));
dot(z);

picture output;
save();
for(int i=0; i<length(p); ++i) {
  pair z=point(p,i), dir=dir(p,i);
  draw((z-0.3dir)--(z+0.3dir), Arrow);
}
add(output, currentpicture.fit(), (-0.5inch, 0), W);
restore();

save();
guide g;
for(int i=0; i<length(p); ++i) {
  dot(precontrol(p,i));
  dot(postcontrol(p,i));
  g=g--precontrol(p,i)--point(p,i)--postcontrol(p,i);
}
draw(g--cycle,dashed);
add(output, currentpicture.fit(), (+0.5inch, 0), E);
restore();

shipout(output);
