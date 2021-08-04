require_relative '../dialogues/final_level_dialogues'

module Levels
  class FinalLevel
    def initialize; end

    def run
      final_level_greetings
      final_level_riddle
      while input = Readline.readline('> ', true)
        case input.downcase
        when 'shadow'
          game_completed
        when 'exit'
          exit_game?
        else
          wrong_answer
        end
      end
    end
  end
end
