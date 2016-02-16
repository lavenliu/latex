
size(0,200);
guide star;
for(int i=0; i<5; ++i)
  star=star--dir(90+144i);
star=star--cycle;
fill(star,orange+zerowinding);
clip(scale(0.7)*unitcircle);
draw(scale(0.7)*unitcircle);
