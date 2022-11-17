using ProgressBars
using Random

function generate_passwords()
    num_of_passwords = parse(Int64, Base.prompt("How many passwords would you like to generate?"))
    password_length = parse(Int64, Base.prompt("How long should the password be?"))

    password_holder = [] 

    for i in ProgressBar(1:num_of_passwords) 
        push!(password_holder, randstring(password_length)) 
        sleep(0.4)
    end

    if length(password_holder) <= 100
       
        for password in password_holder
            print("\n", password)
        end
    end
end