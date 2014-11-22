TOWER_1 = [3,2,1]
TOWER_2 = []
TOWER_3 = []

def display()
  puts "TOWER_1 #{TOWER_1}"
  puts "TOWER_2 #{TOWER_2}"
  puts "TOWER_3 #{TOWER_3}"
  puts 
end

def moving_from_to_array(from, to)
  from = from.to_i
  to = to.to_i
  
    if from == 1
      moving_from = TOWER_1
    elsif from == 2
      moving_from = TOWER_2
    elsif from == 3
      moving_from = TOWER_3
    end
  
    if to == 1 
      moving_to = TOWER_1
    elsif to == 2 
      moving_to = TOWER_2
    elsif to == 3 
      moving_to = TOWER_3
    end
    
    if to == nil 
      puts 'Please enter something'
    elsif from == nil
      puts "Please enter something, next time"
    elsif from > 3
      puts "That is not a tower, try again"
    elsif moving_from.length == 0
      puts "That tower does not have a chip on it, try again"
    elsif to > 3
      puts "That is not a tower, try again"
    elsif moving_to.length >= 1 && (moving_to[-1] < moving_from[-1])
      puts "You can only move onto a peice that is bigger than the one you are moving, try again"
    else
      moving_to.push(moving_from.pop)
    end
end

display()

puts %q{Welcome to Tower of Hanoi:
The object is to move your blocks from TOWER_1 to TOWER_3. Block sizes are represented by their numbers
You can only move one block at a time. Larger blocks can never be on top of smaller blocks. Press "x" to exit at any time"...GOODLUCK}

def game
  
  win = false
  while win == false
    puts "Where would you like to move from? (Tower 1,2 or 3?)"
    from = gets.chomp
    puts "Where would you like to move to? (Tower 1,2, or 3?)"
    to = gets.chomp
      if from == "x" || to == "x"
        puts "Exiting Game"
        break
      end
    moving_from_to_array(from, to)
    display()
    
    
    if TOWER_3 == [3,2,1]
      puts "YOU WIN"
      return true
    end
  end
end
game
