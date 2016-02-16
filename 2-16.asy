import geometry;
size(200);
real a=3,b=4,c=5;
pair A=(0,0);
pair B=(a+b,0);
pair C=(a+b,a+b);
pair D=(0,a+b);
pair X=(a,0);
pair Y=(a+b,a);
pair Z=(b,a+b);
pair W=(0,b);

draw(A--B--C--D--cycle);
draw(X--Y--Z--W--cycle);

perpendicular(A,NE,A--B);
perpendicular(X,NE,X--Y);
perpendicular(Y,NE,Y--Z);
perpendicular(Z,NE,Z--W);
perpendicular(W,NE,W--X);