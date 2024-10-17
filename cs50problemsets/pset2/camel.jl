function main()
    print("camelCase: ")
    v = strip(readline())
    # If not capital letter in the word theirs no way to snake case
    # based of camelcase so varaible is returned unchanged.
    if has_capital_letters(v)
        println("snake_case: $(v)")
        return
    end
    v = snake_case_conv(v)
    println("snake_case: $(v)")
end

# function to check for uppercase letter
# present after the first letter
function has_capital_letters(s)
    # remvoe firs tcharacter for evaluation
    s = s[2:end]
    return !any(c -> isuppercase(c), s)
end

function snake_case_conv(s)
    #=
     Loop through the charater of the string 
     any uppercse letters are found and replaced 
     by underscore and lower case    
     =#
    for c in s
        if isuppercase(c)
            s = replace(s, c => "_" * lowercase(c)) 
        end
    end
    return s
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end