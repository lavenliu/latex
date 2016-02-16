size(200);
pair A, B, C, D;
A=(0,0);
B=(1,0);
C=(1,1);
D=(0,1);

real t=1/5;

pair X=interp(A,B,t);
pair Y=interp(B,C,t);
pair Z=interp(C,D,t);
pair W=interp(D,A,t);

draw(A--B--C--D--cycle);
draw(X--Y--Z--W--cycle, red);
arrow("$t=\frac{1}{5}$", X, SE);