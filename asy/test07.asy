settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{Adobe Song Std}");

size(0,300);

import flowchart;

block block1=roundrectangle("开始",(0,8),ds=3);
block block2=rectangle("$S\leftarrow 0$",(0,7));
block block3=rectangle("$i\leftarrow 1$",(0,6));
block block4=diamond("$i\leqslant 100$",(0,4.5),ds=1,height=10);
block block5=rectangle("$S\leftarrow S+i$",(0,3));
block block6=rectangle("$i\leftarrow i+1$",(0,2));
block block7=parallelogram("输出\ $S$",(0,0));
block block8=roundrectangle("结束",(0,-1),ds=3);
block block9=circle("",(0,5.5),dr=0);
block block10=circle("",(2,0.9),dr=0);
block block11=circle("",(-2,1.3),dr=0);

draw(block1);
draw(block2);
draw(block3);
draw(block4);
draw(block5);
draw(block6);
draw(block7);

draw(block8);

add(new void(frame f, transform t) {
picture pic;
draw(pic,path(new pair[]{block1.bottom(t),block2.top(t)},Vertical), Arrow,PenMargin);
draw(pic,path(new pair[]{block2.bottom(t),block3.top(t)},Vertical), Arrow,PenMargin);
draw(pic,path(new pair[]{block3.bottom(t),block4.top(t)},Vertical), Arrow,PenMargin);
draw(pic,Label("Y",0.5),path(new pair[]{block4.bottom(t),block5.top(t)},Vertical), Arrow,PenMargin);
draw(pic,path(new pair[]{block5.bottom(t),block6.top(t)},Vertical), Arrow,PenMargin);
draw(pic,path(new pair[]{block7.bottom(t),block8.top(t)},Vertical), Arrow,PenMargin);
draw(pic,Label("N",0.5,N),path(new pair[]{block4.right(t),block10.left(t)},Horizontal), PenMargin);
draw(pic,path(new pair[]{block10.left(t),block7.top(t)},Horizontal), Arrow,PenMargin);
draw(pic,path(new pair[]{block6.bottom(t),block11.top(t)},Vertical), PenMargin);
draw(pic,path(new pair[]{block11.top(t),block9.left(t)},Vertical), Arrow,PenMargin);

add(f,pic.fit());
});
