using Printf

function main()
    print("How much was the meal? ")
    dollar_input = readline()
    dollars = dollars_to_float(dollar_input)
    print("What amount would you like the tip to be? ")
    # take inout for the tip and convert to float
    tip_input = readline()
    tip = percent_to_float(tip_input)

    # Calcaute tip and print out the result.
    tip_result = dollars * tip
    @printf("Leave \$%.2f\n", tip_result)
end

function dollars_to_float(d)
    new_d = replace(d, r"\$" => "")
    new_d = parse(Float64, new_d)
    new_d
end

function percent_to_float(p)
    new_p = replace(p, r"\%" => "")
    new_p = parse(Float64, new_p)
    new_p / 100
end

main()