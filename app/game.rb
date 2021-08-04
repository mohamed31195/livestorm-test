require 'singleton'
require 'readline'
require_relative './levels/first_level'
require_relative './home'
require_relative './dialogues/generic_dialogues'
require_relative './helpers/game_helper'

class Game
  include Singleton

  def initialize
    @lives = 3
    @home = Home.new
  end

  attr_reader :lives, :current_level

  def decrement_lives
    @lives -= 1
  end

  def end_game
    @game_over = true
  end

  def run
    system('clear')

    @home.run
  end
end
