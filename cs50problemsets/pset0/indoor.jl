# Julia implementation of cs50p of indoor voice

function main()
    # Use julia readline function to take userinput
    voice = readline()

    # Use julia inbuilt lowercase function 
    println(lowercase(voice))
end

main()