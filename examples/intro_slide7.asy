size(0,200);
path star;
for(int i=0; i < 5; ++i)
  star=star--dir(90+144i);
star=star--cycle;

fill(star,orange+zerowinding);
draw(star,linewidth(3));

fill(shift(2,0)*star,blue+evenodd);
draw(shift(2,0)*star,linewidth(3));
