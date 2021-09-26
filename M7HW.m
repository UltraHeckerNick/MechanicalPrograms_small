%% Question One
t = 0:0.1:4*pi; %Creates time values for independent variable using vectorization

figure(1);
subplot(2,2,1) %Creates 2X2 grid for Graph; this is upper left block
plot(t, cos(t)) %Plots Cosine Function
title("Cosine")
subplot(2,2,2) %Bottom Left Graph
plot(t, sin(t)) %Plots Sine Function
title("Sine")
subplot(2,2,3) %Upper Right Graph
plot(t, exp(t)) %Plots Exponential Function
title("Exponential")
subplot(2,2,4) %Bottom Right Graph
plot(t, log(t)) %Plots Natural Logarithm
title("Natural Logarithm")

%% Question Two
figure(2);
t2 = 0:0.1:10; %time variable as a vector
hold all %the function plots with four different values; allows all to be plotted
for i = 1:4
    plot(t2, exp(-i*t2)) %this plots the an inverse exponential function
end

%% Question Three
p = [1 -2 1]; %polynomial as a row vector
r = roots(p) %calculates the roots of the polynomial, p
p_value = polyval(p,1) %evaluates the polynomial, p, where x = p

%% Question Four
num = [1 2];
den = [1 4 3 0];
[c,p,k] = residue(num,den) %This converts the factor represented function with vectors num and den, and completes partial fraction decomposition.
% c returns the numerator values, p returns the inverse terms added to s,
% and k represents the order of s; if blank, s is first order.
syms s
disp(partfrac((s+2)/((s^3)+(4*s^2)+(3*s))))

%% Question Five
N = [3,1.5,-1];
D = [-1,4.3,-2];
k1 = [];
[a,b] = residue(N,D,k1)
n1 = [2 -0.9 -20.9 -35.7]; %Here the function is done by hand, whereby the two is added to the fraction and returns these factors. 
d1 = [1 -1.3 -10.9 -8.6];
sys = tf(n1,d1)
%% Question Six
sys = tf(num,den) %This returns the simplified transfer function from Q4, given the coefficients of respective power variables, in fractional format.
sys_zpk = zpk(sys) %This returns the same function, but factored for pole/zero analysis. It is easier to see where the zeros(numerator) and poles(denominator) exist.

%% Question Seven 
num = [1,1];
den = [1 3 1];
sys = tf(num,den) %This constructs the simplified transfer function from the numerator/denominator variable coefficients.
sys_zpk = zpk(sys) %This constructs the above function but factors so zeros and poles may be identified. 

%% Question Eight
z8 = [-2];
p8 = [-1 -1 3];
k8 = 1;
sys8 = zpk(z8,p8,k8)
pole(sys8);
zero(sys8);
figure(3);
pzmap(sys8); %This plots the zero-pole diagram for the given function. 
%This may be used to identify if a system is undergoing filtering or
%dampening by the poles plotted. 
% This system exhibits instability as one pole lies in the positive x
% -region. Some stability exists as both poles lie on the x-axis, with no
% real component.

%% Question Nine
s = tf("s"); %This returns the transfer function, which here is just [s]
G = ((s+3)*(s+5))/(s*(s+7)*(s+8)); %This represents the gain of the System
T = feedback(G,1); %Creates a negative feedback loop function given the input gain; -1/1 designates negative feedback
t = 0:0.1:25;
u = t;
[y,t,x] = lsim(T,u,t); %This plots the time reponse of a system given an input of time and amplitude/setpoint.
plot(t,y,"y",t,u,"m")
xlabel("Time(Sec)")
ylabel("Amplitude")
title("Input - Purple: Output - Yellow")
% Important to the graph is how the output response is a lower ampltiude
% to the input, indicating some dampening/filtering.

%% Question Ten
leg = [];
for h = 1:1:5
    figure(4);
    sys10 = zpk([],[-h],h);
    hold all
    step(sys10)
    line = horzcat("poles = -",num2str(h));
    %leg = strvcat(leg,line); %This returned errors, not sure how to fix.
end
legend(leg)
%The graph represents the time response of each system as the parameter, a, changes. 
%The time constants are as follows:
% tau_blue = 1 sec
% tau_red = 0.5 sec
% tau_yellow = 0.38 sec
% tau_purple = 0.25 sec
% tau_green = 0.2 sec

