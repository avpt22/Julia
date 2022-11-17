function rock_paper_scissors()
    moves = ["stein", "saks", "papir"]
    computer_move = moves[rand(1:3)]
    player_score = 0
    computer_score = 0

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
    
    println("Score:\n P: $player_score\n C: $computer_score\n ")

end
