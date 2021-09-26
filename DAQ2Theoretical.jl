using Plots
x = Array(0:1:50)
y = 88 .+ (22-88)*exp.(-x/14)
scatter(x,y,title = "Theoretical Thermocouple Response", minorticks ="true")
xlabel!("Time (ms)")
ylabel!("Temperature (C)")
