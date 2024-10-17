# Julia solution implementation to CS50 pset1 meals.py. 
function main()
    print("What time is it? ")
    time = readline()
    time = convert(time)

    # Evaluate the timing and
    # print out the required response.
    if time >= 7.00 && time <= 8.00
        println("breakfast time")
    elseif time >= 12.00 && time <= 13.00
        println("lunch time")
    elseif time >= 12.00 && time <= 13.00
        println("dinner time")
    # Return nothing
    else
    end
end

function convert(time)
    s = split(time, ':')
    hours = parse(Float64, s[1])
    # OCnvert  teh minute to numerical form
    minutes = parse(Float64, s[2]) / 60
    return hours + minutes
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end