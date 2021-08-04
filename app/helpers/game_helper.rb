def exit_game?
  are_you_sure?('exit the game')
  while input = Readline.readline('> ', true)
    case input.downcase
    when 'y', 'yes', ''
      exit
    when 'n', 'no'
      break
    else
      'Invalid input, please try again'
    end
  end
end

def wrong_answer
  Game.instance.decrement_lives
  puts 'Wrong answer. You have lost 1 life'
  puts "#{Game.instance.lives} life(s) left"
  game_over unless Game.instance.lives.positive?
end

def game_over
  system('clear')
  puts 'You have lost in the journey of life.'
  puts 'It seems you are not ready yet.'
  puts 'You can come back and try again later when you are prepared.'
  exit
end
