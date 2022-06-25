%Define the input and output variables for the MATLAB function, where a1, a0, b1,
%and b0 are the model parameters and Acl is the desired closed-loop characteristic
%polynomial. Enter the following program into the file:
function [Kc,Kd,tauf]=PDplace(a1,a0,b1,b0,Acl);
%Find the closed-loop performance parameters. Continue entering the following program into the file:
ac_2=Acl(2);
ac_1=Acl(3);
ac_0=Acl(4);
%Form the following matrix and vector for the solution of the PD controller parameters,
%and solve the linear equation. Continue entering the following program into the file:
S_matrix=[1 b1 0; a1 b0 b1; a0 0 b0];
Vec=[ac_2-a1;ac_1-a0;ac_0];
contr_p=inv(S_matrix)*Vec;
%Convert the parameters into a PD controller with derivative filter. Continue entering
%the following program into the file:
L0=contr_p(1);
p1=contr_p(2);
p0=contr_p(3);
tauf=1/L0;
Kc=p0/L0;
Kd=p1/L0-p0/L0 ^2;

