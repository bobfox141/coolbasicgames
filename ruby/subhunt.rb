#!/usr/bin/env ruby
# file: subhunt.rb
# description: the game of subhunt where a bunch of players hunt a computer controlled sub.
# this game is originally from 'more basic computer games with David Ahl'




class Utility

  def cls
    puts "\e[H\e[2J"
  end

end

###############################################################
# Subhunt, logic and handling
###############################################################
class Subhunt
  def player_input

  end

  def player_move
  end

  def computer_move
  end



end

##############################################################
# Game runner
##############################################################
class Game
  SLEEPINTERVAL = 0.2
  sh = Subhunt.new
  ut = Utility.new

  def run

    loop do
      sh.player_input
      sh.player_move
      draw_screen
      sleep SLEEPINTERVAL
    end
  end

  def draw_screen
    ut.cls
    puts Time.now
  end

end




Game.new.run
