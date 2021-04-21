clc
clear all
%variables
n = 1:1:3;
l = 1;
%function stuff
x = 0:0.001:3;
i = 1;
while i<4
  X =  sin((((2*n(i))-1)*pi.*x)/(2*l));
  plot(x,X)
  hold on
  xlabel("x (m)")
  ylabel("X (m/m)")
  title("Mode Shape of Cantilevered Beam")
  legend("Mode 1", "Mode 2", "Mode 3")
  i = i+1;
end
