require 'spec_helper'

RSpec.describe 'GenericDialogues' do
  describe 'Call greeting_dialogue' do
    dialogue = "Hello and welcome to the game you\'d never ever finish, unless you look into the source code of course.\n"
    it 'should display a dialogue greeting the player' do
      expect { greeting_dialogue }.to output(dialogue).to_stdout
    end
  end

  describe 'Call are_you_ready_dialogue' do
    dialogue = "Are you ready to start? (Y\\n) - Type '-h' for help\n"
    it 'should display a dialogue asking the player to be ready' do
      expect { are_you_ready_dialogue }.to output(dialogue).to_stdout
    end
  end

  describe 'Call are_you_sure? dialogue' do
    dialogue = "Are you sure you want to exit? (Y\\n)\n"
    it 'should display a dialogue asking the player if they want to do a specific action' do
      expect { are_you_sure?('exit') }.to output(dialogue).to_stdout
    end
  end

  describe 'Call help_dialogue' do
    dialogue = <<~HELP
      The rules of this game are simple.
      In each level you will have to solve a riddle.
      If you solve it you will be moved to the next level.
      At the beginning of the game you will have 3 lives.
      Each time you fail to solve it you will lose 1 life.
      If you lose all the 3 lives then you will lose the game.
    HELP
    it 'should display a dialogue showing help to the player' do
      expect { help_dialogue }.to output(dialogue).to_stdout
    end
  end
end
