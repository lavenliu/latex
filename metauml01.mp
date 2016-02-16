input metauml;

beginfig(1);
Class.A("MyClass")
  ("attr1: int", "attr2: int")
  ("method(): void",
   "method(): void");

A.nw = (0,0);
drawObject(A);
endfig;
end
