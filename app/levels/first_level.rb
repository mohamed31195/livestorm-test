require_relative '../dialogues/first_level_dialogues'
require_relative './final_level'

module Levels
  class FirstLevel
    def initialize; end

    def run
      system('clear')
      direction_selection_dialogue
      while input = Readline.readline('> ', true)
        case input.downcase
        when 'left'
          answer_riddle('left', 'advice')
        when 'right'
          answer_riddle('right', 'confidence')
        when 'forward'
          answer_riddle('forward', 'tomorrow')
        when 'exit'
          exit_game?
        else
          puts 'Invalid input, please try again'
        end
      end
    end

    private

    def answer_riddle(direction, correct_answer)
      send("#{direction}_direction_dialogue")
      while input = Readline.readline('> ', true)
        case input.downcase
        when correct_answer
          correct_answer_dialogue
          ::Levels::FinalLevel.new.run
        when 'exit'
          exit_game?
        else
          wrong_answer
        end
      end
    end
  end
end
