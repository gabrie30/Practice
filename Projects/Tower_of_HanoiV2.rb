class HanoiGame
  def initialize n
    @towers = Array.new(n) { [] }
    @towers[0] = n.downto(1).to_a
  end

  def display
    @towers.each_with_index { |tower, idx| puts "TOWER_#{idx + 1} #{tower}" }
    puts " "
  end

  def moving_from_to_array(from, to)
    raise ArgumentError, 'Please enter something' unless to and from

    from = from.to_i - 1
    to = to.to_i - 1

    raise ArgumentError, 'That is not a tower, try again' unless from < @towers.size and to < @towers.size

    moving_from = @towers[from]
    moving_to = @towers[to]

    raise ArgumentError, 'That tower does not have a chip on it, try again' if @towers[from].empty?
    raise ArgumentError, 'You can only move onto a piece that is bigger than the one you are moving, try again' if moving_to.length >= 1 && (moving_to[-1] < moving_from[-1])

    moving_to.push(moving_from.pop)
  end

  def run
    display

    win = false
    until win
      puts "Where would you like to move from? (Tower number)"
      from = gets.chomp
      puts "Where would you like to move to? (Tower number)"
      to = gets.chomp

      if from == "x" || to == "x"
        puts "Exiting Game"
        return
      end

      begin
        moving_from_to_array(from, to)
      rescue ArgumentError => err
        puts err.message
      end
      display

      win = @towers[2] == [3,2,1]
    end

    puts "YOU WIN"
  end
end

puts %q{Welcome to Tower of Hanoi:
The object is to move your blocks from TOWER_1 to TOWER_3. Block sizes are represented by their numbers
You can only move one block at a time. Larger blocks can never be on top of smaller blocks. Press "x" to exit at any time"...GOODLUCK}

HanoiGame.new(5).run