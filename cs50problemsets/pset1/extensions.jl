# Speciify constant of file extension arrray types in the global scope.
IMAGE_EXT = ["jpg","jpeg","png","gif"]
APP_EXT = ["pdf", "zip"]
TEXT_EXT = ["txt"]

function main()
    # Ask user for file input and read in input.
    print("File name: ")

    # Deal with whiespace with strip and case sensitivity using lowercase.
    file = strip(lowercase(readline()))

    # Extract file extension or rertun the inputted string. 
    ext = extension_type(file)
    
    # Evaluate the extension type and print out appropriate.
    println(extension_checker(ext))
end

function extension_type(file)
    # Check
    if count(c -> c == '.', file) == 1
        ext = file[findlast(isequal('.'),file):end]
        ext = replace(ext, "." => "")
        return ext
    else
        #= 
        If no file extension exists 
        return the file string back. 
        =#
        return file
    end
end 

function extension_checker(ext)
    if any(ext in IMAGE_EXT)
        return "image/" * ext
    elseif any(ext in APP_EXT)
        return "application/" * ext
    elseif any(ext in TEXT_EXT)
        return "text/" * ext
    else 
        return "application/octet-stream"
    end 
end

# Run if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end