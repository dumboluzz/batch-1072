class SessionsView
  def ask_for_stuff(stuff)
    puts "Please enter the #{stuff}:"
    gets.chomp
  end

  def wrong_credentials
    puts "Wrong credentials... Please try again!"
  end
end
