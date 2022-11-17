function rock_paper_scissors()
    moves = ["stein", "saks", "papir"]
    player_score = 0
    computer_score = 0
<<<<<<< HEAD
=======
    human_move = Base.prompt("Velg stein, saks eller papir")

    println("Stein...")
    sleep(1)

    println("Saks...")
    sleep(1)

    println("Papir...")
    sleep(1)

        
    if computer_move == human_move
        println("Uavgjort, prøv igjen")
    elseif computer_move == "stein" && human_move == "saks"
        println("Du tapte. Stein slår saks.")
        computer_score += 1
    elseif computer_move == "saks" && human_move == "papir"
        println("Du tapte. Saks slår papir.")
        computer_score += 1
    elseif computer_move == "papir" && human_move == "stein"
        println("Du tapte! Papir slår stein")
        computer_score += 1
    else
        println("Du vant! Datamaskinen valgte $computer_move")
        player_score += 1
    end    
>>>>>>> 743f52e707bb5dd33a84b92b59f4d7abc59fb336
    
    while computer_score < 5 || player_score < 5
        human_move = Base.prompt("Velg stein, saks eller papir")
        computer_move = moves[rand(1:3)]
        
        println("Stein...")
        sleep(0.5)        
        println("Saks...")
        sleep(0.5)
        println("Papir...")
        sleep(0.5)
    
        if computer_move == human_move
            println("Uavgjort, prøv igjen")
        elseif computer_move == "stein" && human_move == "saks"
            println("Du tapte. Stein slår saks.")
            computer_score += 1
        elseif computer_move == "saks" && human_move == "papir"
            println("Du tapte. Saks slår papir.")
            computer_score += 1
        elseif computer_move == "papir" && human_move == "stein"
            println("Du tapte! Papir slår stein")
            computer_score += 1
        elseif computer_move == "saks" && human_move == "stein"
            println("Du vant! Stein slår saks.")
            player_score += 1
        elseif computer_move == "papir" && human_move == "saks"
            println("Du vant! Saks slår papir.")
            player_score += 1
        elseif computer_move == "stein" && human_move == "papir"
            println("Du vant! Papir slår stein")
            player_score += 1
        end
      
        println("Score:\n P: $player_score\n C: $computer_score\n ") 
    
        if computer_score == 5 || player_score == 5
            break
        end    
    end 
end
