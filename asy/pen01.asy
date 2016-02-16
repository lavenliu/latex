pen solid=linetype("");
pen dotted=linetype("0 4");
pen dashed=linetype("8 8");
pen longdashed=linetype("24 8");
pen dashdotted=linetype("8 8 0 8");
pen longdashdotted=linetype("24 8 0 8");
pen Dotted=dotted+1.0;
pen Dotted(pen p=currentpen) {return dotted+2*linewidth(p);}
