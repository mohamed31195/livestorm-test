require 'spec_helper'

RSpec.describe 'Game' do
  describe 'Initialize Game Instance' do
    it 'should have lives to equal 3' do
      expect(Game.instance.lives).to eq(3)
    end
  end

  describe 'Decrement lives' do
    it 'should have 2 lives' do
      expect(Game.instance.decrement_lives).to eq(2)
    end
  end
end
