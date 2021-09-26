syms w C L
e1 = 3 == w*L;
e2 = 1 == 1/(w*C);
e3 = 2.544 + 0.178318i == (20+(4*1i*3)+((-5*1i)/(3))+(((-1i^2)*3)))/(9+((-1i/(w*C))+(1i*w*L)));
sol = vpasolve([e1,e2,e3], [w, C, L]);
sol.w
sol.C
sol.L