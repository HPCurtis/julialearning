function amount_checker(amount)
    if amount == 25 || amount == 10 || amount == 5
        return true
    else
        return false
    end
end


function main()
    price = 50
    
    while true
        #=
         For ouptut reason price must be converted
         to int after each flaoting point calculation
         =#
        price = Int(price)
        println("Amount Due: $(price)")
        print("Insert Coin: ")
        amount = parse(Float64, strip(readline()))

        if amount_checker(amount)
            price -= amount
           
            if price <= 0
                #= 
                    For prestnaion convert to Intvalue nd take absolute value
                    to give the right change form.
                =#
                price = Int(abs(price))
                println("change owed: $(price)")
                break
            end
        end
    end
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end