function main()
    # Ask user the Great Question of Life.
    print("What is the Answer to the Great Question of Life, the Universe, and Everything? ")
    
    # Control for whitesapce error for inputs usign strip. 
    resp = strip(readline())
    # Print repsonse evalaution of the Great Question of Life.
    println(gql_eval(resp))
    
end

function gql_eval(resp)
    if resp == "42"
        "Yes"
    elseif resp == "forty-two"
        "Yes"
    elseif resp == "Forty two"
        "Yes"
    else
        "No"
    end
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end