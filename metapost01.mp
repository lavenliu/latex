prologues:=1;
verbatimtex
  %&latex
  \documentclass{article}
  \usepackage{latexsym}
  \usepackage{amsmath}                  % AMS LaTeX宏包
  \usepackage{amssymb}                  % 用来排版漂亮的数学公式
  \usepackage{amsbsy}
  \usepackage{amsthm}
  \usepackage{amsfonts}
  \usepackage{amscd}
  \usepackage{mathrsfs}                 % 英文花体字体
  \usepackage{CJK}
  \begin{CJK}{GB}{song}                 % 如果在Windows下用MikTeX+WinEdt，用\begin{CJK}{GBK}{song}
  \begin{document}
  etex

  beginfig(1);
  u:=2cm;
  pair A,B,C;
  pair E,F,G,H;
  E:=(-u,-.8u);
  F:= (3u,-.8u);
  G:=(4u,.8u);
  H:=(0,.8u);
  path p;
  p := E--F--G--H--cycle;
  fill p withcolor .8white;
  draw p;
  label.ulft(btex 投影空间~$\mathscr{L}$ etex, F);
  A:=(u,0);
  B:=(u,1.2u);
  C:=(.5u,-.5u);
  label.lft(btex $\boldsymbol{z}$ etex, B);
  label.lrt(btex $\boldsymbol{z}$~在~$\mathscr{L}$~上的投影 etex, A);
  label.lrt(btex $\rightsquigarrow \|\boldsymbol{z}-{\rm Proj} \boldsymbol{z}\|$~是~$\boldsymbol{z}$~到 etex, 0.5[A,B]);
  label.lrt(btex \ \ \ \ 投影空间~$\mathscr{L}$~的最短距离 etex, 0.3[A,B]);
  drawarrow origin--A;
  drawarrow origin--B;
  drawarrow origin--C;
  draw B--C dashed evenly;
  draw A--B dashed evenly;
  draw A--C dashed evenly;
endfig;

verbatimtex
  \end{CJK}
  \end{document}
  etex
  end
  
