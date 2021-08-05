require 'spec_helper'

RSpec.describe 'GameHelper' do
  describe 'Call wrong_answer' do
    before do
      wrong_answer
    end
    it 'should decrement lives by 1' do
      expect(Game.instance.lives).to eq(2)
    end
  end

  describe 'Call game_over' do
    dialogue = <<~OVER
      You have lost in the journey of life.
      It seems you are not ready yet.
      You can come back and try again later when you are prepared.
    OVER
    it 'should display a dialogue ending the game' do
      expect { game_over }.to output(dialogue).to_stdout
    end
  end
end
