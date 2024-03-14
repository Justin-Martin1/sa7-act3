ROOM_POINTS = [5, 10, 15]

total_score = 0

puts "Welcome to the adventure game!"
puts "You have #{total_score} points."

#game
loop do
    puts "Choose a room (1-3) to enter or 'exit' to end the game: "
    choice = gets.chomp.downcase

    if choice == 'exit'
        puts "Game over. Total points collected: #{total_score}"
        break
    end

    room_number = choice.to_i

    if room_number >= 1 && room_number <= 3
        room_points = ROOM_POINTS[room_number - 1]

        total_score += room_points

        puts "You entered Room #{room_number} and earned #{room_points}."
    else
        puts "Invalid choice. Please choose a room number between 1 and 3."
    end
end