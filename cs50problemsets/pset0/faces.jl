# Julia implementation of the CS50P pset0 face.py programme.

function main()
    #= 
        Take user input and replace any smiling/sad faces 
        and replace with the unicode for related emojis. 
    =#
    input = strip(readline())
    input = replace(input, ":)" =>"\U0001F60A")
    input = replace(input, ":(" => "\U0001F641")
    # Print the update output
    println(input)
end 

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end