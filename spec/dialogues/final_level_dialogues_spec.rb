require 'spec_helper'

RSpec.describe 'FinalLevelDialogues' do
  describe 'Call final_level_greetings' do
    dialogue = <<~GREETING
      Welcome to the final level.
      I am Mahatmi Ghuru, the Master of Life.
      If you solve my riddle I will give you the secret to infinite happiness in life.
      ___________________________________________________________________________________
    GREETING
    it 'should display a dialogue welcoming the player to final level' do
      expect { final_level_greetings }.to output(dialogue).to_stdout
    end
  end

  describe 'Call final_level_riddle' do
    dialogue = <<~RIDDLE
      Only one color, but not one size,
      Stuck at the bottom, yet easily flies.
      Present in sun, but not in rain,
      Doing no harm, and feeling no pain.
      What is it?
    RIDDLE
    it 'should display a dialogue showing a riddle to the player' do
      expect { final_level_riddle }.to output(dialogue).to_stdout
    end
  end

  describe 'Call game_completed' do
    dialogue = <<~COMPLETE
      I am impressed. You are the first person to solve my riddle.
      I will reward you with the secret to infinite happiness in life.
      The secret to infinite happiness in life is...
      \n
      To share it with others.
      Thousands of candles can be lighted from a single candle,
      and the life of the candle will not be shortened.
      Happiness never decreases by being shared.
      \n
      I hope you have learned the lesson my friend.
      See you soon.
    COMPLETE
    it 'should display a dialogue congratulating the player for completing the game' do
      expect { game_completed }.to output(dialogue).to_stdout
    end
  end
end
