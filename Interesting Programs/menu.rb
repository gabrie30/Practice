class Menu

  attr_reader :quit

  def initialize( *menu_choices )
    @menu_choices = menu_choices
    @quit = @menu_choices.length
  end

  def get_menu_choice
    @menu_choices.each_with_index do |item,index|
      puts "#{index+1}. #{item}"
    end

    print "Enter your choice: "
    user_choice = gets.to_i
    return user_choice
  end

end

menu = Menu.new(
  "Load character 1",
  "Load character 2",
  "Load weapons",
  "Quit"
  )

while ((choice = menu.get_menu_choice) != menu.quit)
  case choice
  when 1
    puts "Loading character 1"
  when 2
    puts "Loading character 2"
  when 3
    puts "Loading weapons"
  when 3
    puts "quit"
  end
end