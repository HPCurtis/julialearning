function main()
    # Create array of vowels in both upper ans lowercase form.
    VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']

    # Ask user for input then strip thre whitespace
    print("Input: ")
    word = strip(readline())

    # Create empyt string concatentation due to string immutability in Julia.
    reduced_word = ""

    # Loop through chartter of the word
    for c in word
        #=
         If the character is not in the VOWELS 
         array concatenate the charater to empty string.
        =#
        if !(c in VOWELS)
            reduced_word *= c 
        end
    end

    println("Output: $(reduced_word)")
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end