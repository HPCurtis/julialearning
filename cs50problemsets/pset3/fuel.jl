# Julia implementation of CS50P pset3 fuel.py
function  main()

    res = 0

    while true
        print("Fraction: ")
        frac = strip(readline())
        frac_s = split(frac, "/")
        
        #=
            Check if the results are digits and integer
            isdigit achieves this.
        =#
        if all(isdigit, frac_s[1]) && all(isdigit, frac_s[2])
            # Split return the 0 as string so double quotes.

            if frac_s[2] != "0"
                # zero division return infinty.
                res = parse(Float64,frac_s[1]) / parse(Float64, frac_s[2])
                if res <= 1
                    # Conditons met break out of infinte while loop
                    break
                end
           end
        end
    end

    # Calculate the percentage. return as int for output purposes
    res = Int(res * 100)

    # Evaliute percentage to determine the output.
    if res >= 99
        println("F")
    elseif res <= 1
        println("E")
    else 
        println("$(res)%")
    end
    
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end