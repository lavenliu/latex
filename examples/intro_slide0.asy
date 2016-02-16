
picture pic;

path zoombox(real h) {
  return box((-h,-h/2),(min(10,h),min(10,h)/2));
}

frame zoom(real h, real next=0) {
  frame f;
  draw(f, (0,-100){W}..{E}(0,0), Arrow);
  clip(f, zoombox(h));
  if(next > 0)
    draw(f, zoombox(next));

  return scale(100/h)*f;
}

add(zoom(100), (0,0));
add(zoom(10), (200,0));
add(zoom(1), (400,0));
