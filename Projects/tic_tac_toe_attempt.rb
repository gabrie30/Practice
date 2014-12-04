# A version of the original classic Tic-Tac-Toe

def board(moves)
  puts " _#{moves[1]}_|_#{moves[2]}_|_#{moves[3]}_ "
  puts " _#{moves[4]}_|_#{moves[5]}_|_#{moves[6]}_ "
  puts "  #{moves[7]} | #{moves[8]} | #{moves[9]}  "
end

def change_team_x_board(moves)
  puts "Team X's which square would you like to select?"
  selection_x = gets.to_i
    if moves[selection_x] != " "
      puts "That square is taken choose a different option"
      return "x_chose_wrong"
    else 
      moves[selection_x] = "X"
    end
end

def change_team_o_board(moves)
  puts "Team O's which square would you like to select?"
  selection_o = gets.to_i
      if moves[selection_o] != " "
        puts "That square is taken choose a different option"
        return "o_chose_wrong"
      end
  moves[selection_o] = "O"
end

def solved?(moves)

  if moves[1] == "X" && moves[2] == "X" && moves[3] == "X" || moves[1]== "O" && moves[2]== "O" and moves[3] == "O"
    return true
  elsif moves[4]== "X" && moves[5]== "X" && moves[6] == "X" || moves[4]== "O" && moves[5]== "O" && moves[6]== "O"
    return true
  elsif moves[7]== "X" && moves[8]== "X" && moves[9] == "X" || moves[7]== "O" && moves[8]== "O" && moves[9] == "O"
    return true
  elsif moves[1]== "X" && moves[4]== "X" && moves[7] == "X" || moves[1]== "O" && moves[4]== "O" && moves[7] == "O"
    return true
  elsif moves[2]== "X" && moves[5]== "X" && moves[8]== "X" || moves[2]== "O" && moves[5]== "O" && moves[8] == "O"
    return true
  elsif moves[3]== "X" && moves[6]== "X" && moves[9]== "X" || moves[3]== "O" && moves[6]== "O" && moves[9] == "O"
    return true
  elsif moves[1]== "X" && moves[5]== "X" && moves[9]== "X" || moves[1]== "O" && moves[5]== "O" && moves[9] == "O"
    return true
  elsif moves[3]== "X" && moves[5]== "X" && moves[7] == "X" || moves[3]== "O" && moves[5]== "O" && moves[7] == "O"
    return true
  elsif moves.values.include?(" ") == false
    puts "TIE GAME"
    exit
  else
    return false
  end
end

moves = {1 => " ", 2 => " ", 3 => " ", 4 => " ", 5 => " ", 6 => " ", 7 => " ", 8 => " ", 9 => " "}

solved = false
until solved != false

    if solved?(moves) == true
      puts board(moves)
      puts "Team O's are the WINNER!!"
     exit
    end

  puts board(moves)
  if change_team_x_board(moves) == "x_chose_wrong"
    change_team_x_board(moves)
  end

    if solved?(moves) == true
      puts board(moves)
      puts "Team X's are the WINNER!!"
      exit
    end

  puts board(moves)
  if change_team_o_board(moves) == "o_chose_wrong"
    change_team_o_board(moves)
  end

end



