function play_number_guess_human()

    total_numbers = 25 #

    target_number = rand(1:total_numbers)
    guess = 0

    while guess != target_number # While quess don't equal the target number it will continue until guess match
        println("\n Guess a number between 1 and $total_numbers: ")
        guess = parse(Int64, readline())

        if abs(target_number - guess) <= 2 && target_number != guess
             println("\n You are getting closer")
        end
    end

    println("\n Nice job, you got it!")

end
    
