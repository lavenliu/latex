size(200);
import patterns;
draw(unitcircle,red);
add("name",hatch(NW));
filldraw(unitcircle,pattern("name"));

clip(currentpicture,unitcircle);