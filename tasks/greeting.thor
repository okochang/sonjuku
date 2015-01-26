class Greeting < Thor

  class_option :verbose, aliases: '-v', type: :boolean, desc: 'execute command verbose mode'

  desc "hello NAME", "greeting of when meet somebody"
  option :time_period, type: :string, aliases: '-t', desc: 'Please specify time period you want to say hello. ex) morning, evening, night'
  def hello(name)
    puts "> saying hello" if options[:verbose]
    case options[:time_period]
    when "morning"
      puts "Hello #{name}, good morging."
    when "evening"
      puts "Hello #{name}, good evening." 
    when "night"
      puts "Hello #{name}, It's time to go to bed."
    else
      puts "Hello #{name}."
    end
    puts "> done saying hello" if options[:verbose]
  end

  desc "good_bye NAME", "greeting of when parted from somebody"
  def good_bye(name)
    puts "> saying hello" if options[:verbose]
    puts "See you #{name}."
    puts "> done saying hello" if options[:verbose]
  end
  
end
