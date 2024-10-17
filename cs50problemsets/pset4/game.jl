# Julia implmentation of the CS50P pset4 game.py prorgamme.
using Random # random number generator package.

function main()
    # Intialis the lvel variable
    level = 0

    # Set up while llop to get user to input a positive integer value.
    while true
        try
            print("Level: ")
            level = parse(Int, readline())
            if level > 0
                break 
            end
        catch 
        end
    end

    #Generate the number to be guessed.
    number = rand(1:level)

    # while loop to get guesses till the correct number if guessed.
    while true 
        try
            print("Guess: ")
            guess = parse(Int, readline())

            if guess > number
                println("Too large!")
            elseif guess < number
                println("Too small!")
            else 
                println("Just Right!")
                break
            end
        catch   
        end
    end
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end