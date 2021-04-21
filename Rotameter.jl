using Roots #use: pkg.add("Roots") or in package mode: add Roots
rhoW = 1000 #Density of water in kg/m^3
rhoPVC = 1380 #Density of PVC in kg/m^3
Cd = 0.7 #Drag coefficient
Vs = (4/3)*pi #Coefficient for volume of sphere
g = 9.81 #Acceleration by gravity on Earth
V_dot = 3.2e-3 #Volumetric flow rate
A_in = (pi/4)*0.15^2 #Area of inlet
A_out = (pi/4)*0.35^2 #Area of outlet
f(r) = (sqrt((2*(rhoPVC-rhoW)*g*(Vs*r^3))/
(Cd*rhoW*(pi*r^2))))*(A_in-(pi*r^2))-V_dot 
    #assumes ball diameter is closer to inlet
f2(r)= (sqrt((2*(rhoPVC-rhoW)*g*(Vs*r^3))/
(Cd*rhoW*(pi*r^2))))*(A_out-(pi*r^2))-V_dot
    #assumes ball diameter is closer to outlet
a = 2*fzero(f,0.07) #reference Roots in Julia documentation for usage of fzero
display(a) #lower bound result
b = 2*fzero(f2,0.17)
display(b) #upper bound result