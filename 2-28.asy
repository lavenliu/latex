size(200);
pair z0=(0,0),c0=(1,1),c1=(2,1),z1=(3,0);
draw(z0--c0--c1--z1);
real t=1/3;
pair m0=interp(z0,c0,t);
pair m1=interp(c0,c1,t);
pair m2=interp(c1,z1,t);
pair m3=interp(m0,m1,t);
pair m4=interp(m1,m2,t);
pair m5=interp(m3,m4,t);

label("$Z_{0}$",z0,S);
label("$Z_{1}$",z1,SE);
label("$C_{1}$",c0,NW);
label("$C_{2}$",c1,NE);

dot("$m_{0}$",m0,NW);
dot("$m_{1}$",m1,NE);
dot("$m_{2}$",m2,NE);
dot("$m_{3}$",m3,SE);
dot("$m_{4}$",m4);
dot("$m_{5}$",m5,NE);

arrow("$t=\frac{1}{3}$",m5,SE);

draw(m0--m1--m2);
draw(m3--m4);

draw(z0..controls c0 and c1..z1,red);