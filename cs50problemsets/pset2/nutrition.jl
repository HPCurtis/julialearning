# Define constans for arrays of FRUIts and their associated 
FRUITS =   ["apple", "avocado", "banana", "cantaloupe", "grapefruit", "grapes", "honeydew melon", "kiwifruit", "lemon", 
            "lime", "nectarine", "orange", "peach", "pear", "pineapple", "plums", "strawberries", "sweet cherries", 
            "tangerine", "watermelon"]

CALS = [130, 50, 110, 50, 60, 90, 50, 90, 15, 20, 60, 80, 60, 100, 50, 70, 50, 100, 50, 80]

function main()
    # Request a fruti from user and 
    print("Item: ")
    fruit = lowercase(strip(readline()))

    # If no availible fruit is selected return nothing. 
    if !(fruit in FRUITS)
        return
    end

    # Find the index of the selected fruit then find the associated calories.
    index = findfirst(x -> occursin(fruit, x), FRUITS)
    cals = CALS[index]
    println("Calories: $(cals)")
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end