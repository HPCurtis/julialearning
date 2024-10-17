# Julia implementation of CS50p bank pset1.
function main()

    # Get user input.
    print("Greeting: ")
    greeting = strip(lowercase(readline()))

    # Remove punctuation from greeting input
    punct_re = r"[^\w\s]"
    greeting = replace(greeting, punct_re => " ")

    # Logic check the greeting for reward determination
    if startswith(greeting, "hello")
         return "\$0"
    elseif greeting[1] == 'h'
        return "\$20"
    else
        return "\$100"
    end

end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    println(main())
end