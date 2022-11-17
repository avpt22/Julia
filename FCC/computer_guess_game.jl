using Random

function play_number_guess_computer()
    println("Please choose a number beteen 1 and 50.")

    target_number = parse(Int64, readline()) # Parse convert string to a numeric dataype (Int64/integer)

    guess_order = collect(1:50) # Return an array of all items in the specified collection/iterator

    rng = MersenneTwister(1234)

    guess_shuffled = shuffle(rng, guess_order)

    for guess in guess_shuffled
        if guess == target_number
            println("\nThe comupter guessed right")
            break
        end

        println("\nComputer guessed: $guess")
    end

end
