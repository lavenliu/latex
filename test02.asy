settings.tex="xelatex";
//settings.prc=false;
texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{Adobe Song Std}");
//texpreamble("\setCJKmainfont{Adobe Song Std}");
import three;
size(200);
draw(unitbox,red);
label("顶点� $A$",(1,1,1),2Z);