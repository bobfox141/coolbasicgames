#!/usr/bin/env ruby
# file: autorally.rb
# desc: conversion  to ruby from basic.
# In this auto rally you can choose both the car and the route. But the
# better the car, the more gas it eats; and the good routes are more
# dangerous. It's all lots of fun, but be careful.


def game(data)
  carnames = [ "FreeRide", "Mini", "Lotus", "Trans-Am", "Ferrari" ]
  coursenames = ["Freecourse", "StraightOn", "CurvyCanyon", "Window" ]
  puts "The Car Rally"
  puts "This is the Super Car Rally that all drivers in the world"
  puts "wait for. The driving is tough this year and we all wish you"
  puts "good luck!"
  puts ""
  puts "Choice of Cars:"
  puts " Mini     [1]"
  puts " Lotus    [2]"
  puts " Trans-Am [3]"
  puts " Ferrari  [4]"
  puts ""
  puts "Choose the car by the number after. Remember the"
  puts "better the car, the more gas it uses."
  while true
    print "Which car [1..4]: "
    car = gets.to_i()
    if car < 1 or car > 4 then
      puts "I don't have a car with that number."
    else
      break
    end
  end
  puts "You have chosen the #{carnames[car]}."
  puts "You now choose the course you want to race on."
  puts "The easiest course is number 1, and it is the straightest route. "
  puts "Course 5 consists mostly of twists and turns."
  while true
      print "Which course do you want to race [1..5]: "
      course = gets.to_i()
      if course < 1 or course > 5
        puts "I don't have a course with that number."
      else
        break
      end
  end
  puts "You have chosen to race the #{course}."
  puts "You need to travel 5 miles with each .5 gallons of gas."
  puts "Your status will shown for each 10 seconds after each status"
  puts "check you will be asked for a new rate of gas flow. A rate is"
  puts "[-10..10] where 1 is idle and 10 is hard acceleration, and"
  puts "(-) numbers are braking."
  # so it appears that the number of the car is matched the amount of
  # control inputs and petrol it uses. oh, never mind. it reads the data statement
  # it selects.
  h, t0, m, s = data[car]  # okay, not sure how to turn this into ruby... array maybe
  # why is this here? b isn't referenced before this that I can find.
  b = b.to_f / 10.0
  a1 = 0.5
  mi = 0
  car = car / 2.0
  v = 0
  puts
  wi = 0
  t = 0
  d = 0
  q1 = 0
  print "Velocity #{v} Gallons = #{a1} "
  puts "Miles = #{mi} Time = #{t} seconds."
  if mi >= 5 then
    theFinishLine()
  end
  while true
    puts "What is your new throttle: "
    g = gets.to_i
    if g >= 0 and g <= 10 then
      break
      print "Invalid throttle setting ==> "
    end
  end




end

## main program
begin
  cardata = [[45,0,53,10], [60,0,5,13], [70,0,41,15], [89,0,39,18]]
  game(cardata)
  exit(true)
end





#data 45,,53,10
#data 60,,5,13
#data 70,,41,15
#data 80,,39,18


def yesOrNo()
  puts "Answer Yes or No [Y/n]:"
  ans = gets.downcase
  if ans[0] == 'y' then
    return true
  else
    return false
  end
end

def theFinishLine()
  puts "The Finish Line"
  puts
  puts "You are lucky this year."
  puts "You want to go again [Y/n]?"
  ans = yesOrNo()
  if ans == "Y" then
    replay = true
  end


end
