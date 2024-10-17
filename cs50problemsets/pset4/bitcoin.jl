using HTTP
using JSON
using Printf

function main()
    
    # initialsise n
    n = ""

    if length(ARGS) < 1
        println("Missing command-line argument")
        exit()
    end

    try
        n = parse(Float64, ARGS[1])
    catch
        println("Command-line argument is not a number")
        exit()
    end    

    bitcoin = HTTP.get("https://api.coindesk.com/v1/bpi/currentprice.json")
    data = JSON.parse(String(bitcoin.body))
    USD_rate = data["bpi"]["USD"]["rate"]

    cleaned_USD = replace(USD_rate, "," => "")
    amount = parse(Float64, cleaned_USD) * n
    println(amount)
    
end

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end