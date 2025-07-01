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
  ut = Utility.new

  def player_input

  end

  def player_move
  end

  def computer_move
  end

  def instructions
puts"THE OBJECT OF SUB HUNT IS TO FIND AND DESTROY AN ENEMY"
puts"SUBMARINE.  ONE TO SIX PLAYERS CAPTAIN DESTROYERS WHILE THE"
 puts"COMPUTER CONTROLS THE SUBMARINE."
puts
puts"EACH DESTROYER IS EQUIPPED WITH AN ACCURATE SONAR"
puts"WHICH WILL PROVIDE YOU WITH THE DISTANCE TO THE SUBMARINE"
 puts"BUT NOT THE DIRECTION.  SO YOU AND YOUR FELLOW PLAYERS MUST"
puts"TRY TO DEDUCE THE SUB'S POSITION WHICH IS CONSTANTLY CHANGING."
 puts
puts
puts"PRESS <ENTER> TO CONTINUE"
ut.getenter
 clear
puts
puts"YOUR SHIP CAN MOVE FROM 0 TO 8 UNITS A TURN, BUT CAN ONLY"
puts"SPEED UP OR SLOW DOWN 2 SPEED UNITS PER TURN.  WHEN A SHIP"
 puts"IS MOVING 2 UNITS/TURN OR LESS, YOU MAY MAKE CHANGES IN"
puts"COURSE OF UP TO 90 DEGREES.   if  YOUR SHIP IS MOVING MORE THAN"
 puts"2 UNITS/TURN, A MAXIMUM CHANGE OF DIRECTION OF 45 DEGREES"
puts"IS PERMITTED."
puts
  end


end

##############################################################
# Game runner
##############################################################
class Game
  SLEEPINTERVAL = 0.2



  def run

    loop do
      sh = Subhunt.new
      sh.player_input
      sh.player_move
      draw_screen
      sleep SLEEPINTERVAL
    end
  end

  def draw_screen
    ut = Utility.new
    ut.cls
    puts Time.now
  end

end




Game.new.run
