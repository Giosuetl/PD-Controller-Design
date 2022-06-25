a1=0;
a0=0;
b1=0;
b0=0.1;
Ac=conv([1 1],[1 1]);
Acl=conv(Ac,[1 1]);
[Kc,Kd,tauf]=PDplace(a1,a0,b1,b0,Acl);

Kc
Kd
tauf
