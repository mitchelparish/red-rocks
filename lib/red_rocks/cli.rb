require 'colorize'

class RedRocks::CLI

  def call
    welcome
    show_concert
  end

  def welcome
    puts ""
    puts "   //                                            \\\\".red.bold
    puts "  ////                                          \\\\\\\\".red.bold
    puts " /// Welcome to Red Rocks Park and Amphitheatre!! \\\\\\".red.bold
    puts "////                                              \\\\\\\\".red.bold
    puts ""
    puts "The next show:"
  end

  def show_concert
    @concert = RedRocks::Concert.next_show
    puts ""
    puts "#{@concert.name}".bold
    puts "#{@concert.opener}"
    puts "On #{@concert.date} at #{@concert.time}"
    puts "For tickets and more information, please visit:".cyan
    puts "#{@concert.tickets_URL}"
    puts ""
  end
end
