# Julia implementation of CS50 pset2 plates.py.  
function main()
    print("Plate: ")
    plate = strip(readline())

    if isvalid(plate)
        println("Valid")
    else
        println("Invalid")
    end
end

# Function implements all rewuired check on the inputted plate.
function isvalid(plate)
    
    # Run puncuation check on plate
    if punc_check(plate)
        return false       
    end

    # Check the lengh requirement of the plate string.
    if len_check(plate)
        return false
    end
    if char_order(plate)
        return false
    end

    if zero_first(plate)
        return false
    end 

    # If all checks are passed then the plate is valid and true is returned
    return true
    
end

#= 
    Define function to check if the plate provided 
    by the user has any punctuation.
=#
function punc_check(plate)

    # Check for punctation in string if there is
    # retuned false 
    if occursin(r"[[:punct:]]", plate)
        return true
    else
        return false
    end
end

# Function to check the length of the plate
function len_check(plate)
    if  length(plate) < 2 || length(plate) > 6
        return true
    else
        return false
    end
end

# Function to check if letter follws numebr in the plate string.
function char_order(plate)
    for (i, c) in enumerate(plate)
        if isnumeric(c)
            # Check if the next character is a letter
            if i < length(plate) && isletter(plate[i+1])
                return true
            end
        end
    end
    return false
end

# Function to check if first number of plate is zero
function zero_first(plate)

    i = 1
    while i <= length(plate)
        if isdigit(plate[i])
            return plate[i] == '0'
        end
        i += 1
    end 
    
   # Idenfify if the first number equals 0
   return false
end   

# Run if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end