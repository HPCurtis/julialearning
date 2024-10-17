function main()
    input = strip(readline())
    input = replace(input, ":)" =>"\U0001F60A")
    input = replace(input, ":(" => "\U0001F641")
    # Prin.t the update output
    println(input)
end 

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end