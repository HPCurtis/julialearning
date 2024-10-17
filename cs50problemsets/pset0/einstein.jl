# Julia implemetnation of cs50p pset einstein.
function main()
    print("M: ")
    mass = parse(Int, readline())
    println("E: ", einstein(mass))
end

# Define e = mc sqaured function. 
function einstein(mass)
    mass * 300000000^2
end

# Call main function
main()