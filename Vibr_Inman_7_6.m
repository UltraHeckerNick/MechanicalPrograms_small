%P6
clc
clear all 
n = 3;
while n<24
    t = 0:pi/(n):20;
    f1 = 5.*sin(3.*t);
    figure
    scatter(t,f1,15,"filled","red")
    title(["Response sampling at pi/",num2str(n),"seconds"])
    xlabel("time (s)")
    ylabel("Transferred Output (m,F)")
    n=n*2;
end
