input metauml;
input TEX;
beginfig(82);
  save art,cow,ifa;
  Class.art("Artist")()("+draw()", "+paint()");
  Class.cow("Cowboy")()("+draw()", "+shoot()");
  Class.ifa("Draw")()("+draw()");
  classStereotype.ifa("<<interface>>");
  cow.w = art.e + (100,0);
  z0 = 0.5[art.e,cow.w];
  ifa.s = z0 + (0,40);
  drawObjects(art,cow,ifa);
  draw art.e -- cow.w dashed evenly;
  z1 = ifa.s - (0,10);
  draw z0 -- z1 dashed evenly;
  link(inheritance)(z1--ifa.s);
endfig;
end
