
size(500,0);
real bw=0.15;
real sw=0.2;
real r=0.15;

path outside=(0,0)--(0,1)--
    (bw+sw,1)..(bw+sw+r+bw,1-(r+bw))..(bw+sw,1-2(r+bw))--
    (bw,1-2(r+bw))--(bw,0)--cycle;
path inside=(bw,1-bw-2r)--(bw,1-bw)--
    (bw+sw,1-bw)..(bw+sw+r,1-bw-r)..(bw+sw,1-bw-2r)--cycle;
//fill(new path[] {outside, reverse(inside)},yellow);

path[] P={outside, reverse(inside)};

fill(P,blue);
fill(shift(2,0)*reflect((0,0),(0,1))*P, red);
fill(shift(4,0)*rotate(30)*P, yellow);
fill(shift(6,0)*yscale(0.7)*xscale(2)*P, green);
