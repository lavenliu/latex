pair P=(3.5cm,3.5cm);
pair A=(4cm,0),B=(4cm,3cm),C=(0,3cm);

for (int i=0;i<=3;++i)
{
filldraw(rotate(90*i,P) * A -- rotate(90*i,P) * B -- rotate(90*i,P) * C -- cycle,
fillpen=opacity(0.1)+red, drawpen=red+0.5mm);
}

fill(box((3cm,3cm),(4cm,4cm)),opacity(0.5)+yellow);