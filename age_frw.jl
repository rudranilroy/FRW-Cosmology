#@iamrudra98

#Defining the function
Omega_D0 = 0.7
Omega_M0 = 0.3
Omega_R0 = 0.0001
H0 = 1/(13.96*(10^9))

f(a) = (((Omega_D0) + (Omega_M0 * (a^(-3))) + (Omega_R0 * (a^(-4))))^(-1/2))/(H0*a)


#Setting initial and final values of a, step size
total_sum = 0.0
println("Enter the number of steps : ")
n = parse(Float64, readline())
initial_value = 0.0001
println("The value of a for which the age will be calculated : ")
final_value = parse(Float64, readline())
h = (final_value - initial_value)/n

#Integrating f(a) from intial value of a (=0) to final value (=1) using Simpson's 1/3rd rule
S = 0
for i=0:n
    if (i==0  || i==n)
        global S = S + f(initial_value + (h*i))
    else
        if (mod(i,2)==0)
            global S = S + (4*f(initial_value + (h*i)))
        else
            global S = S + (2*f(initial_value + (h*i)))
        end
    end
end
S = S*h/3

println("Age of the universe is ", S, " years for a = ", final_value)

