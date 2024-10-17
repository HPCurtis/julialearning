function main()
    if length(ARGS) < 1
        println("Too few Arguments")
        exit()
    elseif length(ARGS) > 1
        println("Too many Arguments")
        exit()
    elseif extension_type(ARGS[1]) != "jl"
        println("Not a Julia file")
        exit()
    end

     # Initialize line counter
    line = 0 

    open(ARGS[1]) do f
        
        # Read till end of file
        while !eof(f)  
            
            # Read and strip whitespace from each line
            s = strip(readline(f))
            
            # Check if the line is either a comment or empty
            if isempty(s) || startswith(s, '#')
                # Skip comment or empty lines
            else
                # Increment line counter for non-comment, non-empty lines
                line += 1
            end
        end
    end
    # Print the total line count
    println(line)
end

# Factored out code from completion of extensions pset.
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

# Runs main function if script is run directly from cli.
if abspath(PROGRAM_FILE) == abspath(@__FILE__)
    main()
end