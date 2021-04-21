using Plots
gr()
n = 3
while n < 24
    t = 0:(pi/n):20
    f(t) = 5*sin.(3*t)
    display(
    plot(f,t,
    seriestype = :scatter,
    title = "Response Sampling",
    xlabel = "time (s)",
    ylabel = "Transferred Output (m,F)"
    ))
    global n *= 2
    
end
