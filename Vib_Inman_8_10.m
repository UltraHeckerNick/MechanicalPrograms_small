clc
clear all
syms w
K = [2 -1; -1 1];
M = [4 1;1 2];
a = (2*7e10);
b = (2700/12);
c = det((a*K)-((w^2)*(b*M)));
vpasolve(c,w)


