require 'spec_helper'

RSpec.describe 'FirstLevelDialogues' do
  describe 'Call direction_selection_dialogue' do
    dialogue = <<~DIRECTION
      Welcome to level 1.
      In order to start the journey please select a direction to move toward. (Left/Right/Forward)
    DIRECTION
    it 'should display a dialogue directioning the player' do
      expect { direction_selection_dialogue }.to output(dialogue).to_stdout
    end
  end

  describe 'Call left_direction_dialogue' do
    dialogue = <<~LEFT
      You are here in the path of wisdom.
      Answer the following riddle to move to the next level
      Almost everyone needs it, asks for it, and gives it, but almost nobody takes it. What is it?
    LEFT
    it 'should display a dialogue showing a path to the player' do
      expect { left_direction_dialogue }.to output(dialogue).to_stdout
    end
  end

  describe 'Call right_direction_dialogue' do
    dialogue = <<~RIGHT
      You are here in the path of life.
      Answer the following riddle to move to the next level
      Journey without it and you will never prevail, but if you have too much of it you will surely fail. What is it?
    RIGHT
    it 'should display a dialogue showing a path to the player' do
      expect { right_direction_dialogue }.to output(dialogue).to_stdout
    end
  end

  describe 'Call forward_direction_dialogue' do
    dialogue = <<~FORWARD
      You are here in the path of truth.
      Answer the following riddle to move to the next level
      What is always coming but never arrives?
    FORWARD
    it 'should display a dialogue showing a path to the player' do
      expect { forward_direction_dialogue }.to output(dialogue).to_stdout
    end
  end

  describe 'Call correct_answer_dialogue' do
    dialogue = <<~CORRECT
      Correct!
      You are now one step away from knowing the secret of life.
      See you in the next level.
      _____________________________________________________________________________________
    CORRECT
    it 'should display a dialogue congratulating the player for the correct answer' do
      expect { correct_answer_dialogue }.to output(dialogue).to_stdout
    end
  end
end
