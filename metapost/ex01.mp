beginfig(1);
  u=1cm;
  draw (0u,0u) -- (1.5u,0u) -- (1.5u,1.5u) -- (0u,1.5u) -- cycle;
  z1=(0u,-0.2u);
  z2=(1.5u,-0.2u);
  drawdblarrow z1 -- z2;
  label.bot("1.5cm", 0.5[z1,z2]);
endfig;

beginfig(2);
  draw "MetaPost" infont "cmsl12" scaled 2 rotated 30;
endfig;

end
