settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{Adobe Song Std}");

size(200);
pair O=(0,0);
draw(Label("东",EndPoint),O--E,Arrow);
draw(Label("北",EndPoint),O--N,Arrow);
draw(Label("西",EndPoint),O--W,Arrow);
draw(Label("南",EndPoint),O--S,Arrow);
draw(Label("东北",EndPoint),O--NE,Arrow);
draw(Label("西北",EndPoint),O--NW,Arrow);
draw(Label("东南",EndPoint),O--SE,Arrow);
draw(Label("西南",EndPoint),O--SW,Arrow);
