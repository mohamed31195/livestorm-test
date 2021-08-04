class Home
  def run
    greeting_dialogue
    are_you_ready_dialogue
    while input = Readline.readline('> ', true)
      case input.downcase
      when 'y', 'yes', ''
        ::Levels::FirstLevel.new.run
        puts 'Game starting soon'
      when '-h'
        help_dialogue
        are_you_ready_dialogue
      when 'n', 'no', 'exit'
        exit_game?
        are_you_ready_dialogue
      else
        puts 'Invalid input, please try again'
      end
    end
  end
end
